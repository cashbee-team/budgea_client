# budgea_client

BudgeaClient - the Ruby gem for the Budgea API Documentation

# Budgea Development Guides

Welcome to **Budgea**'s documentation.
This documentation is intended to get you up-and-running with our APIs and advise on the implementation of some
regulatory aspects of your application, following the DSP2's guidelines.
## Getting Started **IMPORTANT** Depending on your status with regard of the DSP2 regulation, **agent** or **partner**,
you may call our APIs or simply use our Webview and callbacks to get the financial data of your users. As an **agent**,
you are allowed to call directly our APIs and implement your own form to get the user's credentials. As a **partner**,
you cannot manipulate the credentials, and have to delegate this step to us through our webview.

The sections below will document how to use our APIs, make sure you have the **agent** status to do so. For the
**partner**, please refer to the section *Webview* and *Callbacks* of this documentation.

### Overview
Your API is a REST API which requires a communication through https to send and receive JSON documents. During your
tests, we recommend to make calls to the API with curl or any other HTTP client of your choice.
You can watch a video demonstration on this [URL](https://asciinema.org/a/FsaFyt3WAPyDm7sfaZPkwal3V). For the examples
we'll use the demo API with adress `https://demo.biapi.pro`, you should change that name to your API's name.

### Hello World
Let's start by calling the service `/banks` which lists all available banks.
``` curl -X GET \\
 https://demo.biapi.pro/2.0/banks/
```

To log in to a bank webpage, you'll need to know for a given bank, the fields your user should fill in the form.
Let's call a specific bank and ask for an additional resource *fields*.
``` curl -X GET \\
 https://demo.biapi.pro/2.0/banks/59?expand=fields
```
The response here concerns only 1 bank (since we specified an id) and the resource _Fields_ is added to the response
thanks to the query parameter `expand`.

To get more interesting things done, you'll need to send authenticated requests.

### Authentication
The way to authenticate is by passing the `Authorization: Bearer <token>` header in your request. At the setup
a _manage token_ have been generated, you can use this token for now, when creating your user we'll see how to
generate a user's token.
``` curl -X GET \\
 https://demo.biapi.pro/2.0/config \\
 -H 'Authorization: Bearer <token>'
```

This endpoint will list all the parameters you can change to adapt Budgea to your needs.
We've covered the very first calls. Before diving deeper, let's see some general information about the APIs.

## Abstract

### API URL

`https://demo.biapi.pro/2.0`

### Requests format
Data format: **application/x-www-form-urlencoded** or **application/json** (suggested)
Additional headers: Authorization: User's token (private)

### Responses format
Data format: **application/json** ([http://www.json.org](http://www.json.org/)) Charset: **UTF-8**
### Resources
Each call on an endpoint will return resources. The main resources are:

| Resource            | Description                                                                                                           |
|---------------------|:------------------------------------------------------------------------------------------------------------------    |
|Users                | Represent a user                                                                                                      |
|Connection           | A set of data used to authenticate on a website (usually a login and password). There is 1 connection for each website|
|Account              | A bank account contained in a connection                                                                              |
|Transaction          | An entry in a bank account                                                                                            |
|Investment           | An asset in a bank account                                                                                            |

The chain of resources is as follow: **Users ∈ Connections ∈ Accounts ∈ Transactions or Investments**

### RESTful API
This API is RESTful, which means it is stateless and each resource is accessed with an uniq URI.

Several HTTP methods are available:

| Method                  | Description                    |
| ------------------------|:-------------------------------|
| GET /resources          | List resources                 |
| GET /resources/{ID}     | Get a resource from its ID     |
| POST /resources         | Create a new resource          |
| POST /resources/{ID}    | Update a resource              |
| PUT /resources  /{ID}   | Update a resource              |
| DELETE /resources       | Remove every resources         |
| DELETE /resources/{ID}  | Delete a resource              |

Each resource can contain sub-resources, for example: `/users/me/connections/2/accounts/23/transactions/48`

### HTTP response codes

| Code        | Message               | Description                                                                                   |
| ----------- |:---------------------:|-----------------------------------------------------------------------------------------------|
| 200         | OK                    |Default response when a GET or POST request has succeed                                        |
| 202         | Accepted              |For a new connection this code means it is necessary to provide complementary information (2FA)|
| 204         | No content            |Default response when a POST request succeed without content                                   |
| 400         | Bad request           |Supplied parameters are incorrect                                                              |
| 403         | Forbidden             |Invalid token                                                                                  |
| 500         | Internal Servor Error |Server error                                                                                   |
| 503         | Service Unavailable   |Service is temporarily unavailable                                                             |

### Errors management

In case an error occurs (code 4xx or 5xx), the response can contain a JSON object describing this error:

```json
{
  "code": "authFailure",
  "message": "Wrong password"  // Optional
}
```

If an error is displayed on the website, Its content is returned in error_message field. The list of all possible
errors is listed further down this page.

### Authentication
A user is authenticated by an access_token which is sent by the API during a call on one of the
authentication services, and can be supplied with this header: `Authorization: Bearer YYYYYYYYYYYYYYYYYYYYYYYYYYY`
There are two user levels:
* Normal user, which can only access to his own accounts
* Administrator, with extended rights

### Default filters

During a call to an URI which lists resources, some filters can be passed as query parameters:

| Parameter   | Type      | Description                                               |
| ----------- |:---------:|-----------------------------------------------------------|
| offset      | Integer   |Offset of the first returned resource                      |
| limit       | Integer   |Limit number of results                                    |
| min_date    | Date      |Minimal date (if supported by service), format: YYYY-MM-DD |
| max_date    | Date      |Maximal date (if supported by service), format: YYYY-MM-DD |

### Extend requests

During a GET on a set of resources or on a unique resource, it is possible to add a parameter expand to the request
to extend relations with other resources:

`GET /2.0/users/me/accounts/123?expand=transactions[category],connection`

```json
{
  "id": 123,
  "name": "Compte chèque",
  "balance": 1561.15,
  "transactions": [
    {
      "id": 9849,
      "simplified_wording": "HALL'S BEER",
      "value": -513.20,
      ...,
      "category": {
        "id": 561,
        "name": "Sorties / Bar",
        ...
      }
    },
    ...
  ],
  "id_user": 1,
  "connection": {
    "id": 1518,
    "id_bank": 41,
    "id_user": 1,
    "error": null,
    ...
  }
}
```

### Request example

```http
GET /2.0/banks?offset=0&limit=10&expand=fields
Host: demo.biapi.pro
Accept: application/json
Authorization: Bearer <token>
```

```http
HTTP/1.1 200 OK
Content-Type: application/json
Content-Length: 3026
Server: Apache
Date: Fri, 14 Mar 2014 08:24:02 GMT
{    \"banks\" : [       {          \"id_weboob\" : \"bnporc\",          \"name\" : \"BNP Paribas\",          \"id\" : 3,          \"hidden\" : false,          \"fields\" : [             {                \"id\" : 1,                \"id_bank\" : 3,                \"regex\" : \"^[0-9]{5,10}$\",                \"name\" : \"login\",                \"type\" : \"text\",                \"label\" : \"Numéro client\"             },             {                \"id\" : 2,                \"id_bank\" : 3,                \"regex\" : \"^[0-9]{6}$\",                \"name\" : \"password\",                \"type\" : \"password\",                \"label\" : \"Code secret\"             }          ]       },       ...    ]    \"total\" : 41 }
```

### Constants

#### List of bank account types

| Type          |Description                        |
| -----------   |-----------------------------------|
| checking      |Checking account                   |
| savings       |Savings account                    |
| deposit       |Deposit accounts                   |
| loan          |Loan                               |
| market        | Market accounts                   |
| joint         |Joint account                      |
| card          |Card                               |
| lifeinsurance |Life insurance accounts            |
| pee           |Plan Épargne Entreprise            |
| perco         |Plan Épargne Retraite              |
| article83     |Article 83                         |
| rsp           |Réserve spéciale de participation  |
| pea           |Plan d'épargne en actions          |
| capitalisation|Contrat de capitalisation          |
| perp          |Plan d'épargne retraite populaire  |
| madelin       |Contrat retraite Madelin           |
| unknown       |Inconnu                            |

#### List of transaction types

| Type         |Description                        |
| -----------  |-----------------------------------|
|transfer      |Transfers                          |
|order         |Orders                             |
|check         |Checks                             |
|deposit       |Cash deposit                       |
|payback       |Payback                            |
|withdrawal    |Withdrawal                         |
|loan_payment  |Loan payment                       |
|bank          |Bank fees                          |
|card          |Card operation                     |
|deferred_card |Deferred card operation            |
|card_summary  |Mensual debit of a deferred card   |

#### List of synchronization errors

| Error                      |Description                                                                            |
| -----------------------    |-------------------------------------------------------------------------------------  |
|wrongpass                   |The authentication on website has failed                                               |
|additionalInformationNeeded |Additional information are needed                                                      |
|websiteUnavailable          |The website is unavailable                                                             |
|actionNeeded                |An action is needed on the website                                                     |
|bug                         |A bug has occurred during the synchronization. An alert has been sent to Budget Insight|

Now you know the basics of Budgea API
- Basic call to retrieve resources
- Add query parameters to aplly filters
- Expand resources
- Authenticated calls

We're good for the basics! Now let's see how to integrate Budgea in your app and create your first user.

## Integrate Budgea

### The workflow Users of your application exist in the Budgea API.
Every User is identified by an access_token which is the shared secret between your application and our API.
The workflow is as below:

1. The user is on your application and wants to share his bank accounts or invoices.
2. A call is made **client side** (browser's javascript or desktop application) to create a temporarily token which will be used to make API calls.
3. A form is built, allowing the user to select the connector to use (bank or provider, depending on context). Every connector requires different kind of credentials.
4. A call on the API is made with the temporarily token to add a **Connection** with the credentials supplied by user.
5. In case of success, the user chooses what bank accounts (**Account**) or subscriptions (**Subscription**) he wants to share with your application.
6. When he validates the share, the temporarily token is transmitted to your server.

This one will call the Budgea API with this token to get a permanent token.

**Note**   In case your application works without a server (for example a desktop application), the permanent token can
be obtained on the 1st step, by supplying a client_secret to /autinit and the step 6 is omitted. To get more
information, read the protocol.   There are 3 steps to integrate Budgea in your application:
1. Provide a way for your users to share their credentials with you
2. Get the data scraped from Budgea
3. Be sure to follow the good practices before going into production

### Get credentials from users
You have 2 options here:
- Integrate the Budget Insight's Webview, a turnkey solution to get user's credentials
- Create your own form following the protocol (must have the *agent* status)

#### Webview

The webview allows your users to give their bank or provider credentials to the safety third-party Budgea API.
It is responsive, which means it displays correctly on a desktop or a mobile device.
The API meets the standard [OAuth 2](http://tools.ietf.org/html/rfc6749) and any client library that implements it will
be able to facilitate the integration to the Budgea API. We provide PHP, Python and Ruby modules to facilitate the
integration.

|Language         | Library                                                                                  |
|-----------------|----------------------------------------------------------------------------------------  |
|PHP              |[BudgeaAPI.php](https://github.com/budgetinsight/budgea-clients/blob/master/BudgeaAPI.php)|
|PYTHON           |[budgea_api.py](https://github.com/budgetinsight/budgea-clients/blob/master/budgea_api.py)|
|RUBY             |[budgea.rb](https://github.com/budgetinsight/budgea-clients/blob/master/budgea.rb)        |

To delegate to the Budgea API the management of the bank and provider credentials of your users, you have to
provide a button which redirects on the following page: `https://demo.biapi.pro/2.0/auth/share/`

You must first configure your client application. A client, in the OAuth 2 of the term, represents an application
accessing to the Budgea API. The parameters to supply to the URL are the following:

|Parameter            |Description                                                  |
|---------------------|------------------------------------------------------------ |
|client_id            |The client id of your application                            |
|redirect_uri         |(optional) The adress where the user shoud be redirected after sharing his credentials. The adress must match the redirection URI set for the client |
|state                |(optional) An arbitrary string sent back to you for control  |
|types                |The type of connectors (**banks** or **providers**)          |
|connectors           |(optional) Given a connector id, it will prefill the form    |

You can use our libraries to generate this URL. It is also possible to get the HTML code of the button with
the libraries, the render is as below: ![Share your accounts button](https://demo.biapi.pro/2.0/auth/share/button_icon.png)

When the user confirms the share of his accounts with you, he is redirected to the callback URL you have defined. This one receives the following parameters:

|Parameter            |Description                                                                                      |
|---------------------|-------------------------------------------------------------------------------------------------|
|code                 |A temporary token allowing you to get the **access_token**                                       |
|state                |The same string passed when redirecting to the webview                                           |
|error                |In case of error, the value will be **access_denied**, meaning the user has canceled the process |

Eventually, to get the **access_token** from the temporarily code which has been transmitted to you, you must call the API:

```python
   try:
       if client.handleCallback(received_params):
       # Keep the token associated with the user
       # you can't get it twice
       user.session['access_token'] = client.access_token
   except client.StateInvalid:
       # error if 'state' param provided to handleCallback doesn't match
   except client.AuthFailed:
       # There may be an error in the query (look for the message),
       # Or return code is 'access_denied', the user has stopped the process
```

You can now associate this **access_token** to your user, and use it in your next calls to the API with
the **Authorization** header.   **IMPORTANT**  It is important that your users are able to go back on the web,
authenticated on their Budgea API account, to add or remove accounts shared with you, and mostly to update their
credentials if needed.  To do this, when your user is given an access_token, you have to provide him a link to access
the webview, similar to the first one, with an additional parameter: a temporarily token (30 minutes life-time).

It can be made with the library, by generating the URL with the following manner:
`  print '<a href=\"%s\">Edit your accounts</a>' % client.get_settings_url()`

After the modification, the user will go back on the callback URL. It will not be necessary to do anything (the access_token won't be changed).

#### Protocol

This section describes the protocol used to set bank and provider accounts of a user, in case you don't want to use
the webview.  The idea is to call the following services client-side (with AJAX in case of a web application),
to ensure the bank and providers credentials will not be sent to your servers.  1. /auth/init

```http
POST /auth/init
```

```json
{
  "auth_token": "fBqjMZbYddebUGlkR445JKPA6pCoRaGb",
  "type": "temporary",
  "expires_in": 1800
}
```
This service creates a temporarily token, to use in the \"Authorization\" header in next calls to the API
The returned token has a life-time of 30 minutes, and should be transfered to the API then (cf Permanent Token),
so that your server can get a permanent access_token.  It is possible to generate a permanent token immediately, by
calling the service with the manage_token, or by supply parameters client_id and client_secret.  2. /banks or /providers
```http
GET /banks?expand=fields Authorization: Bearer <token>
```
```json
{
  "banks": [
    {
      "hidden": false,
      "charged": true,
      "name": "American Express",
      "id": 30,
      "fields": [
        {
          "values": [
            {
              "label": "Particuliers/Professionnels",
              "value": "pp"
            },
            {
              "value": "ent",
              "label": "Entreprises"
            }
          ],
          "label": "Type de compte",
          "regex": null,
          "name": "website",
          "type": "list"
        },
        {
          "type": "password",
          "label": "Code secret",
          "name": "password",
          "regex": "^[0-9]{6}$"
        }
      ]
    },
    ...
  ],
  "total": 44
}
```

You get list of connectors, and all associated fields needed to build the form You can use that list to show your user
all available banks.  3. /users/me/connections You have to supply the id_bank (ID of the chosen bank) or
id_provider (ID of provider), and all requested fields as key/value parameters. You can get the following return codes:

|Code           |Description                                                  |
|---------------|------------------------------------------------------------ |
|200            |The connection has succeed and has been created              |
|202            |It is necessary to provide complementary information. This occurs on the first connection on some kind of Boursorama accounts for example, where a SMS is sent to the customer. It is necessary to ask the user to fill fields requested in the fields, and do a POST again on /users/me/connections/ID, with the connection ID in id_connection. |
|400            |Unable to connect to the website, the field error in the JSON can be **websiteUnavailable** or **wrongpass**  |
|403            |Invalid token                                                |

4. Permanent token If the user validates the share of accounts with you, it is necessary to transform the temporarily
code to a permanent access_token.  To do that, you have to supply it to your server, which should do a POST
request on `/auth/token/access` with the following parameters:

|Parameter            |Description                                                     |
|---------------------|----------------------------------------------------------------|
|code                 |The temporarily token which will let you get the access_token   |
|client_id            |The ID of your client application                               |
|client_secret        |The secret of your client application                           |

```http
POST /auth/token/access
```
```json
{
  "client_id": 17473055,
  "client_secret": "54tHJHjvodbANVzaRtcLzlHGXQiOgw80",
  "code": "fBqjMZbYddebUGlkR445JKPA6pCoRaGb"
}
```

```http
HTTP/1.1 200 OK
```
```json
{
  "access_token": "7wBPuFfb1Hod82f1+KNa0AmrkIuQ3h1G",
  "token_type":"Bearer"
}
```

### Update accounts

Another important call is when a user wants to add/remove connections to banks or providers, or to change the password
on one of them, it is advised to give him a temporarily code from the permanent access_token, with the following call
(using the access_token as bearer):

```http POST /auth/token/code Authorization: Bearer <token> ```

```json
{
  "code": "/JiDppWgbmc+5ztHIUJtHl0ynYfw682Z",
  "type": "temporary",
  "expires_in": 1800
 }
```

Its life-time is 30 minutes, and let the browser to list connections and accounts,
via `GET /users/me/connections?expand=accounts` for example.

To update the password of a connection, you can do a POST on the *connection* resource, with the field *password*
in the data. The new credentials are checked to make sure they are valid, and the return codes are the same as when
adding a connection.  ## Getting the data You have created your users and their connections, now it's time to get the
data. There are 2 ways to retrieve it, the 2 can be complementary: - make regular calls to the API - use the webhooks
 (recommended)

### Manual Synchronization
It is possible to do a manual synchronization of a user. We recommend to use this method in case the user wants fresh data after logging in.
To trigger the synchronization, call the API as below: `PUT /users/ID/connections` The following call is blocking until the synchronization is terminated.
Even if it is not recommended, it's possible to fetch synchronously new data. To do that, you can use the *expand* parameter:
` /users/ID/connections?expand=accounts[transactions,investments[type]],subscriptions`

```json
{
  "connections": [
    {
      "accounts": [
        {
          "balance": 7481.01,
          "currency": {
            "symbol": "€",
            "id": "EUR",
            "prefix": false
          },
          "deleted": null,
          "display": true,
          "formatted_balance": "7 481,01 €",
          "iban": "FR76131048379405300290000016",
          "id": 17,
          "id_connection": 7,
          "investments": [
            {
              "code": "FR0010330902",
              "description": "",
              "diff": -67.86,
              "id": 55,
              "id_account": 19,
              "id_type": 1,
              "label": "Agressor PEA",
              "portfolio_share": 0.48,
              "prev_diff": 2019.57,
              "quantity": 7.338,
              "type": {
                "color": "AABBCC",
                "id": 1,
                "name": "Fonds action"
              },
              "unitprice": 488.98,
              "unitvalue": 479.73,
              "valuation": 3520.28
            }
          ],
          "last_update": "2015-07-04 15:17:30",
          "name": "Compte chèque",
          "number": "3002900000",
          "transactions": [
            {
              "active": true,
              "application_date": "2015-06-17",
              "coming": false,
              "comment": null,
              "commission": null,
              "country": null,
              "date": "2015-06-18",
              "date_scraped": "2015-07-04 15:17:30",
              "deleted": null,
              "documents_count": 0,
              "formatted_value": "-16,22 €",
              "id": 309,
              "id_account": 17,
              "id_category": 9998,
              "id_cluster": null,
              "last_update": "2015-07-04 15:17:30",
              "new": true,
              "original_currency": null,
              "original_value": null,
              "original_wording": "FACTURE CB HALL'S BEER",
              "rdate": "2015-06-17",
              "simplified_wording": "HALL'S BEER",
              "state": "parsed",
              "stemmed_wording": "HALL'S BEER",
              "type": "card",
              "value": -16.22,
              "wording": "HALL'S BEER"
            }
          ],
          "type": "checking"
        }
      ],
      "error": null,
      "expire": null,
      "id": 7,
      "id_user": 7,
      "id_bank": 41,
      "last_update": "2015-07-04 15:17:31"
    }
  ],
  "total": 1
}
```

### Background synchronizations & Webhooks

Webhooks are callbacks sent to your server, when an event is triggered during a synchronization.
Synchronizations are automatic, the frequency can be set using the configuration key `autosync.frequency`.
Using webhooks allows you to get the most up-to-date data of your users, after each synchronization.
The automatic synchronization makes it possible to recover new bank entries, or new invoices, at a given frequency.
You have the possibility to add webhooks on several events, and choose to receive each one on a distinct URL.
To see the list of available webhooks you can call the endpoint hereunder:

```
curl -X GET \
   https://demo.biapi.pro/2.0/webhooks_events \
   -H 'Authorization: Bearer <token>'
```

The background synchronizations for each user are independent, and their plannings are spread over the day so that they do not overload any website.  Once the synchronization of a user is over, a POST request is sent on the callback URL you have defined, including all webhook data. A typical json sent to your server is as below:

```http
POST /callback HTTP/1.1 Host: example.org
Content-Length: 959 Accept-Encoding: gzip, deflate, compress
Accept: */* User-Agent: Budgea API/2.0
Content-Type: application/json; charset=utf-8
Authorization: Bearer sl/wuqgD2eOo+4Zf9FjvAz3YJgU+JKsJ
```
```json
{
  "connections": [
    {
      "accounts": [
        {
          "balance": 7481.01,
          "currency": {
            "symbol": "€",
            "id": "EUR",
            "prefix": false
          },
          "deleted": null,
          "display": true,
          "formatted_balance": "7 481,01 €",
          "iban": "FR76131048379405300290000016",
          "id": 17,
          "id_connection": 7,
          "investments": [
            {
              "code": "FR0010330902",
              "description": "",
              "diff": -67.86,
              "id": 55,
              "id_account": 19,
              "id_type": 1,
              "label": "Agressor PEA",
              "portfolio_share": 0.48,
              "prev_diff": 2019.57,
              "quantity": 7.338,
              "type": {
                "color": "AABBCC",
                "id": 1,
                "name": "Fonds action"
              },
              "unitprice": 488.98,
              "unitvalue": 479.73,
              "valuation": 3520.28
            }
          ],
          "last_update": "2015-07-04 15:17:30",
          "name": "Compte chèque",
          "number": "3002900000",
          "transactions": [
            {
              "active": true,
              "application_date": "2015-06-17",
              "coming": false,
              "comment": null,
              "commission": null,
              "country": null,
              "date": "2015-06-18",
              "date_scraped": "2015-07-04 15:17:30",
              "deleted": null,
              "documents_count": 0,
              "formatted_value": "-16,22 €",
              "id": 309,
              "id_account": 17,
              "id_category": 9998,
              "id_cluster": null,
              "last_update": "2015-07-04 15:17:30",
              "new": true,
              "original_currency": null,
              "original_value": null,
              "original_wording": "FACTURE CB HALL'S BEER",
              "rdate": "2015-06-17",
              "simplified_wording": "HALL'S BEER",
              "state": "parsed",
              "stemmed_wording": "HALL'S BEER",
              "type": "card",
              "value": -16.22,
              "wording": "HALL'S BEER"
            }
          ],
          "type": "checking"
        }
      ],
      "bank": {
        "id_weboob": "ing",
        "charged": true,
        "name": "ING Direct",
        "id": 7,
        "hidden": false
      },
      "error": null,
      "expire": null,
      "id": 7,
      "id_user": 7,
      "id_bank": 41,
      "last_update": "2015-07-04 15:17:31"
    }
  ],
  "total": 1,
  "user": {
    "signin": "2015-07-04 15:17:29",
    "id": 7,
    "platform": "sharedAccess"
  }
}
```

The authentication on the callback is made with the access_token of the user (which is a shared secret between your server and the Budgea API).  When you are in production, it is needed to define a HTTPS URL using a valid certificate, delivered by a recognized authority. If this is not the case, you can contact us to add your CA (Certificate Authority) to our PKI (Public Key Infrastructure).  Important: it is necessary to send back a HTTP 200 code, without what we consider that data is not correctly taken into account on your system, and it will be sent again at the next user synchronization.  ## Guidelines for production Now you should have integrated the API inside your application. Make sure your Webhooks URLs are in HTTPS, if so you can enable the production state of the API.  To make things great, here are some good practices, please check you have respected them: - You have provided to your users a way to configure their accounts - You have provided to your users a way to change their account passwords - You consider the **error** field of Connections, to alert the user in case the state is **wrongpass** - You map IDs of Accounts, Subscriptions, Transactions and Documents in your application, to be sure to correctly match them - When the deleted field is set on a bank transaction, you delete it in your database - You don't loop on all users to launch synchronizations, this might saturate the service  If you have questions about above points, please contact us. Otherwise, you can put into production!

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 2.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build budgea_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./budgea_client-1.0.0.gem
```
(for development, run `gem install --dev ./budgea_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'budgea_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'budgea_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'budgea_client'

# Setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #List clients
  result = api_instance.clients_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->clients_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://demo.biapi.pro/2.0/*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*BudgeaClient::AdministrationApi* | [**clients_get**](docs/AdministrationApi.md#clients_get) | **GET** /clients | List clients
*BudgeaClient::AdministrationApi* | [**clients_id_client_delete**](docs/AdministrationApi.md#clients_id_client_delete) | **DELETE** /clients/{id_client} | Delete a client
*BudgeaClient::AdministrationApi* | [**clients_id_client_get**](docs/AdministrationApi.md#clients_id_client_get) | **GET** /clients/{id_client} | Get information about a client
*BudgeaClient::AdministrationApi* | [**clients_id_client_logo_delete**](docs/AdministrationApi.md#clients_id_client_logo_delete) | **DELETE** /clients/{id_client}/logo | Delete the client logo
*BudgeaClient::AdministrationApi* | [**clients_id_client_logo_post**](docs/AdministrationApi.md#clients_id_client_logo_post) | **POST** /clients/{id_client}/logo | Update the client logo
*BudgeaClient::AdministrationApi* | [**clients_id_client_put**](docs/AdministrationApi.md#clients_id_client_put) | **PUT** /clients/{id_client} | Update a client
*BudgeaClient::AdministrationApi* | [**clients_post**](docs/AdministrationApi.md#clients_post) | **POST** /clients | Create a client
*BudgeaClient::AdministrationApi* | [**config_get**](docs/AdministrationApi.md#config_get) | **GET** /config | Get configuration of the API.
*BudgeaClient::AdministrationApi* | [**config_post**](docs/AdministrationApi.md#config_post) | **POST** /config | Set a configuration value on the API.
*BudgeaClient::AdministrationApi* | [**monitoring_get**](docs/AdministrationApi.md#monitoring_get) | **GET** /monitoring | get performances stats on this instance
*BudgeaClient::AdministrationApi* | [**test_sync_post**](docs/AdministrationApi.md#test_sync_post) | **POST** /test/sync | Test synchronization on a random connection.
*BudgeaClient::AdministrationApi* | [**test_webhooks_post**](docs/AdministrationApi.md#test_webhooks_post) | **POST** /test/webhooks | Test synchronization on a random connection.
*BudgeaClient::AdministrationApi* | [**webhooks_delete**](docs/AdministrationApi.md#webhooks_delete) | **DELETE** /webhooks | Deletes all webhooks
*BudgeaClient::AdministrationApi* | [**webhooks_get**](docs/AdministrationApi.md#webhooks_get) | **GET** /webhooks | Get webhooks
*BudgeaClient::AdministrationApi* | [**webhooks_id_webhook_delete**](docs/AdministrationApi.md#webhooks_id_webhook_delete) | **DELETE** /webhooks/{id_webhook} | Deletes a webhook
*BudgeaClient::AdministrationApi* | [**webhooks_id_webhook_post**](docs/AdministrationApi.md#webhooks_id_webhook_post) | **POST** /webhooks/{id_webhook} | Updates a webhook
*BudgeaClient::AdministrationApi* | [**webhooks_id_webhook_put**](docs/AdministrationApi.md#webhooks_id_webhook_put) | **PUT** /webhooks/{id_webhook} | Updates a webhook
*BudgeaClient::AdministrationApi* | [**webhooks_post**](docs/AdministrationApi.md#webhooks_post) | **POST** /webhooks | Adds a new webhook
*BudgeaClient::AuthenticationApi* | [**auth_init_post**](docs/AuthenticationApi.md#auth_init_post) | **POST** /auth/init | Create a new anonymous user
*BudgeaClient::AuthenticationApi* | [**auth_token_access_post**](docs/AuthenticationApi.md#auth_token_access_post) | **POST** /auth/token/access | Transform a temporary code to a access_token
*BudgeaClient::AuthenticationApi* | [**auth_token_code_get**](docs/AuthenticationApi.md#auth_token_code_get) | **GET** /auth/token/code | Generate a user temporary token
*BudgeaClient::AuthenticationApi* | [**auth_token_delete**](docs/AuthenticationApi.md#auth_token_delete) | **DELETE** /auth/token | Remove user access
*BudgeaClient::AuthenticationApi* | [**hash_delete**](docs/AuthenticationApi.md#hash_delete) | **DELETE** /hash | Delete the user's connections
*BudgeaClient::AuthenticationApi* | [**users_id_user_delete**](docs/AuthenticationApi.md#users_id_user_delete) | **DELETE** /users/{id_user} | Delete the user
*BudgeaClient::AuthenticationApi* | [**users_id_user_get**](docs/AuthenticationApi.md#users_id_user_get) | **GET** /users/{id_user} | Get a user
*BudgeaClient::AuthenticationApi* | [**users_id_user_token_post**](docs/AuthenticationApi.md#users_id_user_token_post) | **POST** /users/{id_user}/token | Create a token
*BudgeaClient::BanksApi* | [**account_types_get**](docs/BanksApi.md#account_types_get) | **GET** /account_types | Get account types
*BudgeaClient::BanksApi* | [**account_types_id_account_type_get**](docs/BanksApi.md#account_types_id_account_type_get) | **GET** /account_types/{id_account_type} | Get an account type
*BudgeaClient::BanksApi* | [**banks_categories_id_category_delete**](docs/BanksApi.md#banks_categories_id_category_delete) | **DELETE** /banks/categories/{id_category} | Delete the supplied category
*BudgeaClient::BanksApi* | [**banks_categories_id_category_post**](docs/BanksApi.md#banks_categories_id_category_post) | **POST** /banks/categories/{id_category} | Edit a bank categories
*BudgeaClient::BanksApi* | [**banks_categories_post**](docs/BanksApi.md#banks_categories_post) | **POST** /banks/categories | Create bank categories
*BudgeaClient::BanksApi* | [**banks_get**](docs/BanksApi.md#banks_get) | **GET** /banks | Get list of connectors
*BudgeaClient::BanksApi* | [**banks_id_bank_connections_get**](docs/BanksApi.md#banks_id_bank_connections_get) | **GET** /banks/{id_bank}/connections | Get a subset of id_connection with the largest diversity of account
*BudgeaClient::BanksApi* | [**banks_id_bank_logos_get**](docs/BanksApi.md#banks_id_bank_logos_get) | **GET** /banks/{id_bank}/logos | Get all links to the files associated with this bank.
*BudgeaClient::BanksApi* | [**banks_id_bank_logos_main_get**](docs/BanksApi.md#banks_id_bank_logos_main_get) | **GET** /banks/{id_bank}/logos/main | Get all links to the files associated with this bank.
*BudgeaClient::BanksApi* | [**banks_id_bank_logos_thumbnail_get**](docs/BanksApi.md#banks_id_bank_logos_thumbnail_get) | **GET** /banks/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
*BudgeaClient::BanksApi* | [**categories_get**](docs/BanksApi.md#categories_get) | **GET** /categories | Get all categories
*BudgeaClient::BanksApi* | [**categorize_post**](docs/BanksApi.md#categorize_post) | **POST** /categorize | categorize transactions without storing them
*BudgeaClient::BanksApi* | [**connections_get**](docs/BanksApi.md#connections_get) | **GET** /connections | Get connections without a user
*BudgeaClient::BanksApi* | [**connectors_get**](docs/BanksApi.md#connectors_get) | **GET** /connectors | Get list of connectors
*BudgeaClient::BanksApi* | [**connectors_id_bank_logos_get**](docs/BanksApi.md#connectors_id_bank_logos_get) | **GET** /connectors/{id_bank}/logos | Get all links to the files associated with this bank.
*BudgeaClient::BanksApi* | [**connectors_id_bank_logos_id_logo_delete**](docs/BanksApi.md#connectors_id_bank_logos_id_logo_delete) | **DELETE** /connectors/{id_bank}/logos/{id_logo} | Delete a single Logo object.
*BudgeaClient::BanksApi* | [**connectors_id_bank_logos_id_logo_put**](docs/BanksApi.md#connectors_id_bank_logos_id_logo_put) | **PUT** /connectors/{id_bank}/logos/{id_logo} | Create or Update a Bank Logo.
*BudgeaClient::BanksApi* | [**connectors_id_bank_logos_main_get**](docs/BanksApi.md#connectors_id_bank_logos_main_get) | **GET** /connectors/{id_bank}/logos/main | Get all links to the files associated with this bank.
*BudgeaClient::BanksApi* | [**connectors_id_bank_logos_post**](docs/BanksApi.md#connectors_id_bank_logos_post) | **POST** /connectors/{id_bank}/logos | Create a Bank Logo
*BudgeaClient::BanksApi* | [**connectors_id_bank_logos_put**](docs/BanksApi.md#connectors_id_bank_logos_put) | **PUT** /connectors/{id_bank}/logos | Create or Update a Bank Logo
*BudgeaClient::BanksApi* | [**connectors_id_bank_logos_thumbnail_get**](docs/BanksApi.md#connectors_id_bank_logos_thumbnail_get) | **GET** /connectors/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
*BudgeaClient::BanksApi* | [**connectors_id_connector_put**](docs/BanksApi.md#connectors_id_connector_put) | **PUT** /connectors/{id_connector} | Edit the provided bank
*BudgeaClient::BanksApi* | [**connectors_post**](docs/BanksApi.md#connectors_post) | **POST** /connectors | Request a new connector
*BudgeaClient::BanksApi* | [**invoicing_get**](docs/BanksApi.md#invoicing_get) | **GET** /invoicing | Get number of accounts, connections and users synced.
*BudgeaClient::BanksApi* | [**logs_get**](docs/BanksApi.md#logs_get) | **GET** /logs | Get connection logs
*BudgeaClient::BanksApi* | [**providers_get**](docs/BanksApi.md#providers_get) | **GET** /providers | Get list of connectors
*BudgeaClient::BanksApi* | [**providers_id_bank_logos_get**](docs/BanksApi.md#providers_id_bank_logos_get) | **GET** /providers/{id_bank}/logos | Get all links to the files associated with this bank.
*BudgeaClient::BanksApi* | [**providers_id_bank_logos_main_get**](docs/BanksApi.md#providers_id_bank_logos_main_get) | **GET** /providers/{id_bank}/logos/main | Get all links to the files associated with this bank.
*BudgeaClient::BanksApi* | [**providers_id_bank_logos_thumbnail_get**](docs/BanksApi.md#providers_id_bank_logos_thumbnail_get) | **GET** /providers/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
*BudgeaClient::BanksApi* | [**users_id_user_account_types_get**](docs/BanksApi.md#users_id_user_account_types_get) | **GET** /users/{id_user}/account_types | Get account types
*BudgeaClient::BanksApi* | [**users_id_user_account_types_id_account_type_get**](docs/BanksApi.md#users_id_user_account_types_id_account_type_get) | **GET** /users/{id_user}/account_types/{id_account_type} | Get an account type
*BudgeaClient::BanksApi* | [**users_id_user_accounts_delete**](docs/BanksApi.md#users_id_user_accounts_delete) | **DELETE** /users/{id_user}/accounts | Delete all accounts
*BudgeaClient::BanksApi* | [**users_id_user_accounts_get**](docs/BanksApi.md#users_id_user_accounts_get) | **GET** /users/{id_user}/accounts | Get accounts list.
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_categories_get**](docs/BanksApi.md#users_id_user_accounts_id_account_categories_get) | **GET** /users/{id_user}/accounts/{id_account}/categories | Get the category
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_delete**](docs/BanksApi.md#users_id_user_accounts_id_account_delete) | **DELETE** /users/{id_user}/accounts/{id_account} | Delete an account.
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_delta_get**](docs/BanksApi.md#users_id_user_accounts_id_account_delta_get) | **GET** /users/{id_user}/accounts/{id_account}/delta | Get deltas of accounts
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_logs_get**](docs/BanksApi.md#users_id_user_accounts_id_account_logs_get) | **GET** /users/{id_user}/accounts/{id_account}/logs | Get accounts logs.
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_put**](docs/BanksApi.md#users_id_user_accounts_id_account_put) | **PUT** /users/{id_user}/accounts/{id_account} | Update an account
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactions_delete**](docs/BanksApi.md#users_id_user_accounts_id_account_transactions_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions | Delete transactions
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactions_get**](docs/BanksApi.md#users_id_user_accounts_id_account_transactions_get) | **GET** /users/{id_user}/accounts/{id_account}/transactions | Get transactions
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_informations_delete**](docs/BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_informations_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations | Delete all arbitrary key-value pairs of a transaction
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_informations_get**](docs/BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_informations_get) | **GET** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations | List all arbitrary key-value pairs on a transaction
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete**](docs/BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information} | Delete a particular key-value pair on a transaction.
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get**](docs/BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get) | **GET** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information} | Get a particular arbitrary key-value pair on a transaction
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_informations_put**](docs/BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_informations_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations | Add or edit transaction arbitrary key-value pairs
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_put**](docs/BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction} | Edit a transaction meta-data
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactions_post**](docs/BanksApi.md#users_id_user_accounts_id_account_transactions_post) | **POST** /users/{id_user}/accounts/{id_account}/transactions | Create transactions
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactionsclusters_get**](docs/BanksApi.md#users_id_user_accounts_id_account_transactionsclusters_get) | **GET** /users/{id_user}/accounts/{id_account}/transactionsclusters | Get clustered transactions
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete**](docs/BanksApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactionscluster} | Delete a clustered transaction
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put**](docs/BanksApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactionscluster} | Edit a clustered transaction
*BudgeaClient::BanksApi* | [**users_id_user_accounts_id_account_transactionsclusters_post**](docs/BanksApi.md#users_id_user_accounts_id_account_transactionsclusters_post) | **POST** /users/{id_user}/accounts/{id_account}/transactionsclusters | Create clustered transaction
*BudgeaClient::BanksApi* | [**users_id_user_accounts_post**](docs/BanksApi.md#users_id_user_accounts_post) | **POST** /users/{id_user}/accounts | Create an account
*BudgeaClient::BanksApi* | [**users_id_user_alerts_get**](docs/BanksApi.md#users_id_user_alerts_get) | **GET** /users/{id_user}/alerts | Get alerts
*BudgeaClient::BanksApi* | [**users_id_user_categories_full_get**](docs/BanksApi.md#users_id_user_categories_full_get) | **GET** /users/{id_user}/categories/full | Get the category
*BudgeaClient::BanksApi* | [**users_id_user_categories_get**](docs/BanksApi.md#users_id_user_categories_get) | **GET** /users/{id_user}/categories | Get the category
*BudgeaClient::BanksApi* | [**users_id_user_connections_delete**](docs/BanksApi.md#users_id_user_connections_delete) | **DELETE** /users/{id_user}/connections | Delete all connections
*BudgeaClient::BanksApi* | [**users_id_user_connections_get**](docs/BanksApi.md#users_id_user_connections_get) | **GET** /users/{id_user}/connections | Get connections
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_delete**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts | Delete all accounts
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_get**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts | Get accounts list.
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_categories_get**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_categories_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/categories | Get the category
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_delete**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account} | Delete an account.
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_delta_get**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_delta_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/delta | Get deltas of accounts
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_logs_get**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_logs_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/logs | Get accounts logs.
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_put**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account} | Update an account
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_delete**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions | Delete transactions
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_get**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions | Get transactions
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations | Delete all arbitrary key-value pairs of a transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations | List all arbitrary key-value pairs on a transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information} | Delete a particular key-value pair on a transaction.
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information} | Get a particular arbitrary key-value pair on a transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations | Add or edit transaction arbitrary key-value pairs
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction} | Edit a transaction meta-data
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_post**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions | Create transactions
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters | Get clustered transactions
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactionscluster} | Delete a clustered transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactionscluster} | Edit a clustered transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters | Create clustered transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_accounts_post**](docs/BanksApi.md#users_id_user_connections_id_connection_accounts_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts | Create an account
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_delete**](docs/BanksApi.md#users_id_user_connections_id_connection_delete) | **DELETE** /users/{id_user}/connections/{id_connection} | Delete a connection.
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_informations_get**](docs/BanksApi.md#users_id_user_connections_id_connection_informations_get) | **GET** /users/{id_user}/connections/{id_connection}/informations | Get connection additionnal informations
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_logs_get**](docs/BanksApi.md#users_id_user_connections_id_connection_logs_get) | **GET** /users/{id_user}/connections/{id_connection}/logs | Get connection logs
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_post**](docs/BanksApi.md#users_id_user_connections_id_connection_post) | **POST** /users/{id_user}/connections/{id_connection} | Update a connection.
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_put**](docs/BanksApi.md#users_id_user_connections_id_connection_put) | **PUT** /users/{id_user}/connections/{id_connection} | Force synchronisation of a connection.
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactions_delete**](docs/BanksApi.md#users_id_user_connections_id_connection_transactions_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions | Delete transactions
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactions_get**](docs/BanksApi.md#users_id_user_connections_id_connection_transactions_get) | **GET** /users/{id_user}/connections/{id_connection}/transactions | Get transactions
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_informations_delete**](docs/BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_informations_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations | Delete all arbitrary key-value pairs of a transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_informations_get**](docs/BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_informations_get) | **GET** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations | List all arbitrary key-value pairs on a transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete**](docs/BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations/{id_information} | Delete a particular key-value pair on a transaction.
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get**](docs/BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get) | **GET** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations/{id_information} | Get a particular arbitrary key-value pair on a transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_informations_put**](docs/BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_informations_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations | Add or edit transaction arbitrary key-value pairs
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_put**](docs/BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction} | Edit a transaction meta-data
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactions_post**](docs/BanksApi.md#users_id_user_connections_id_connection_transactions_post) | **POST** /users/{id_user}/connections/{id_connection}/transactions | Create transactions
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactionsclusters_get**](docs/BanksApi.md#users_id_user_connections_id_connection_transactionsclusters_get) | **GET** /users/{id_user}/connections/{id_connection}/transactionsclusters | Get clustered transactions
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete**](docs/BanksApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactionscluster} | Delete a clustered transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put**](docs/BanksApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactionscluster} | Edit a clustered transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_id_connection_transactionsclusters_post**](docs/BanksApi.md#users_id_user_connections_id_connection_transactionsclusters_post) | **POST** /users/{id_user}/connections/{id_connection}/transactionsclusters | Create clustered transaction
*BudgeaClient::BanksApi* | [**users_id_user_connections_post**](docs/BanksApi.md#users_id_user_connections_post) | **POST** /users/{id_user}/connections | Add a new connection.
*BudgeaClient::BanksApi* | [**users_id_user_forecast_get**](docs/BanksApi.md#users_id_user_forecast_get) | **GET** /users/{id_user}/forecast | Get forecast
*BudgeaClient::BanksApi* | [**users_id_user_logs_get**](docs/BanksApi.md#users_id_user_logs_get) | **GET** /users/{id_user}/logs | Get connection logs
*BudgeaClient::BanksApi* | [**users_id_user_transactions_delete**](docs/BanksApi.md#users_id_user_transactions_delete) | **DELETE** /users/{id_user}/transactions | Delete transactions
*BudgeaClient::BanksApi* | [**users_id_user_transactions_get**](docs/BanksApi.md#users_id_user_transactions_get) | **GET** /users/{id_user}/transactions | Get transactions
*BudgeaClient::BanksApi* | [**users_id_user_transactions_id_transaction_informations_delete**](docs/BanksApi.md#users_id_user_transactions_id_transaction_informations_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/informations | Delete all arbitrary key-value pairs of a transaction
*BudgeaClient::BanksApi* | [**users_id_user_transactions_id_transaction_informations_get**](docs/BanksApi.md#users_id_user_transactions_id_transaction_informations_get) | **GET** /users/{id_user}/transactions/{id_transaction}/informations | List all arbitrary key-value pairs on a transaction
*BudgeaClient::BanksApi* | [**users_id_user_transactions_id_transaction_informations_id_information_delete**](docs/BanksApi.md#users_id_user_transactions_id_transaction_informations_id_information_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/informations/{id_information} | Delete a particular key-value pair on a transaction.
*BudgeaClient::BanksApi* | [**users_id_user_transactions_id_transaction_informations_id_information_get**](docs/BanksApi.md#users_id_user_transactions_id_transaction_informations_id_information_get) | **GET** /users/{id_user}/transactions/{id_transaction}/informations/{id_information} | Get a particular arbitrary key-value pair on a transaction
*BudgeaClient::BanksApi* | [**users_id_user_transactions_id_transaction_informations_put**](docs/BanksApi.md#users_id_user_transactions_id_transaction_informations_put) | **PUT** /users/{id_user}/transactions/{id_transaction}/informations | Add or edit transaction arbitrary key-value pairs
*BudgeaClient::BanksApi* | [**users_id_user_transactions_id_transaction_put**](docs/BanksApi.md#users_id_user_transactions_id_transaction_put) | **PUT** /users/{id_user}/transactions/{id_transaction} | Edit a transaction meta-data
*BudgeaClient::BanksApi* | [**users_id_user_transactions_post**](docs/BanksApi.md#users_id_user_transactions_post) | **POST** /users/{id_user}/transactions | Create transactions
*BudgeaClient::BanksApi* | [**users_id_user_transactionsclusters_get**](docs/BanksApi.md#users_id_user_transactionsclusters_get) | **GET** /users/{id_user}/transactionsclusters | Get clustered transactions
*BudgeaClient::BanksApi* | [**users_id_user_transactionsclusters_id_transactionscluster_delete**](docs/BanksApi.md#users_id_user_transactionsclusters_id_transactionscluster_delete) | **DELETE** /users/{id_user}/transactionsclusters/{id_transactionscluster} | Delete a clustered transaction
*BudgeaClient::BanksApi* | [**users_id_user_transactionsclusters_id_transactionscluster_put**](docs/BanksApi.md#users_id_user_transactionsclusters_id_transactionscluster_put) | **PUT** /users/{id_user}/transactionsclusters/{id_transactionscluster} | Edit a clustered transaction
*BudgeaClient::BanksApi* | [**users_id_user_transactionsclusters_post**](docs/BanksApi.md#users_id_user_transactionsclusters_post) | **POST** /users/{id_user}/transactionsclusters | Create clustered transaction
*BudgeaClient::ConnectionsApi* | [**banks_get**](docs/ConnectionsApi.md#banks_get) | **GET** /banks | Get list of connectors
*BudgeaClient::ConnectionsApi* | [**banks_id_bank_connections_get**](docs/ConnectionsApi.md#banks_id_bank_connections_get) | **GET** /banks/{id_bank}/connections | Get a subset of id_connection with the largest diversity of account
*BudgeaClient::ConnectionsApi* | [**connections_get**](docs/ConnectionsApi.md#connections_get) | **GET** /connections | Get connections without a user
*BudgeaClient::ConnectionsApi* | [**connectors_get**](docs/ConnectionsApi.md#connectors_get) | **GET** /connectors | Get list of connectors
*BudgeaClient::ConnectionsApi* | [**connectors_post**](docs/ConnectionsApi.md#connectors_post) | **POST** /connectors | Request a new connector
*BudgeaClient::ConnectionsApi* | [**logs_get**](docs/ConnectionsApi.md#logs_get) | **GET** /logs | Get connection logs
*BudgeaClient::ConnectionsApi* | [**providers_get**](docs/ConnectionsApi.md#providers_get) | **GET** /providers | Get list of connectors
*BudgeaClient::ConnectionsApi* | [**users_id_user_connections_delete**](docs/ConnectionsApi.md#users_id_user_connections_delete) | **DELETE** /users/{id_user}/connections | Delete all connections
*BudgeaClient::ConnectionsApi* | [**users_id_user_connections_get**](docs/ConnectionsApi.md#users_id_user_connections_get) | **GET** /users/{id_user}/connections | Get connections
*BudgeaClient::ConnectionsApi* | [**users_id_user_connections_id_connection_delete**](docs/ConnectionsApi.md#users_id_user_connections_id_connection_delete) | **DELETE** /users/{id_user}/connections/{id_connection} | Delete a connection.
*BudgeaClient::ConnectionsApi* | [**users_id_user_connections_id_connection_informations_get**](docs/ConnectionsApi.md#users_id_user_connections_id_connection_informations_get) | **GET** /users/{id_user}/connections/{id_connection}/informations | Get connection additionnal informations
*BudgeaClient::ConnectionsApi* | [**users_id_user_connections_id_connection_logs_get**](docs/ConnectionsApi.md#users_id_user_connections_id_connection_logs_get) | **GET** /users/{id_user}/connections/{id_connection}/logs | Get connection logs
*BudgeaClient::ConnectionsApi* | [**users_id_user_connections_id_connection_post**](docs/ConnectionsApi.md#users_id_user_connections_id_connection_post) | **POST** /users/{id_user}/connections/{id_connection} | Update a connection.
*BudgeaClient::ConnectionsApi* | [**users_id_user_connections_id_connection_put**](docs/ConnectionsApi.md#users_id_user_connections_id_connection_put) | **PUT** /users/{id_user}/connections/{id_connection} | Force synchronisation of a connection.
*BudgeaClient::ConnectionsApi* | [**users_id_user_connections_post**](docs/ConnectionsApi.md#users_id_user_connections_post) | **POST** /users/{id_user}/connections | Add a new connection.
*BudgeaClient::ConnectionsApi* | [**users_id_user_logs_get**](docs/ConnectionsApi.md#users_id_user_logs_get) | **GET** /users/{id_user}/logs | Get connection logs
*BudgeaClient::DocumentsApi* | [**documenttypes_get**](docs/DocumentsApi.md#documenttypes_get) | **GET** /documenttypes | Get document types
*BudgeaClient::DocumentsApi* | [**documenttypes_id_documenttype_put**](docs/DocumentsApi.md#documenttypes_id_documenttype_put) | **PUT** /documenttypes/{id_documenttype} | Edit a document type
*BudgeaClient::DocumentsApi* | [**ocr_post**](docs/DocumentsApi.md#ocr_post) | **POST** /ocr | Post an image with OCR
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_delete**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_get**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_post**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_put**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put**](docs/DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_documents_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_documents_get**](docs/DocumentsApi.md#users_id_user_connections_id_connection_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_documents_post**](docs/DocumentsApi.md#users_id_user_connections_id_connection_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_documents_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get**](docs/DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post**](docs/DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_get**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_post**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put**](docs/DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::DocumentsApi* | [**users_id_user_documents_delete**](docs/DocumentsApi.md#users_id_user_documents_delete) | **DELETE** /users/{id_user}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_documents_get**](docs/DocumentsApi.md#users_id_user_documents_get) | **GET** /users/{id_user}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_documents_id_document_delete) | **DELETE** /users/{id_user}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_documents_id_document_put) | **PUT** /users/{id_user}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_documents_post**](docs/DocumentsApi.md#users_id_user_documents_post) | **POST** /users/{id_user}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_documents_put**](docs/DocumentsApi.md#users_id_user_documents_put) | **PUT** /users/{id_user}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::DocumentsApi* | [**users_id_user_ocr_post**](docs/DocumentsApi.md#users_id_user_ocr_post) | **POST** /users/{id_user}/ocr | Post an image with OCR
*BudgeaClient::DocumentsApi* | [**users_id_user_subscriptions_id_subscription_documents_delete**](docs/DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_delete) | **DELETE** /users/{id_user}/subscriptions/{id_subscription}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_subscriptions_id_subscription_documents_get**](docs/DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_get) | **GET** /users/{id_user}/subscriptions/{id_subscription}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_subscriptions_id_subscription_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_id_document_delete) | **DELETE** /users/{id_user}/subscriptions/{id_subscription}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_subscriptions_id_subscription_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_id_document_put) | **PUT** /users/{id_user}/subscriptions/{id_subscription}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_subscriptions_id_subscription_documents_post**](docs/DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_post) | **POST** /users/{id_user}/subscriptions/{id_subscription}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_subscriptions_id_subscription_documents_put**](docs/DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_put) | **PUT** /users/{id_user}/subscriptions/{id_subscription}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::DocumentsApi* | [**users_id_user_transactions_id_transaction_documents_delete**](docs/DocumentsApi.md#users_id_user_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_transactions_id_transaction_documents_get**](docs/DocumentsApi.md#users_id_user_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/transactions/{id_transaction}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_transactions_id_transaction_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_transactions_id_transaction_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/transactions/{id_transaction}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_transactions_id_transaction_documents_post**](docs/DocumentsApi.md#users_id_user_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/transactions/{id_transaction}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_transactions_id_transaction_documents_put**](docs/DocumentsApi.md#users_id_user_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::DocumentsApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_delete**](docs/DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
*BudgeaClient::DocumentsApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_get**](docs/DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
*BudgeaClient::DocumentsApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](docs/DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
*BudgeaClient::DocumentsApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put**](docs/DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
*BudgeaClient::DocumentsApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_post**](docs/DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
*BudgeaClient::DocumentsApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_put**](docs/DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::OCRApi* | [**ocr_post**](docs/OCRApi.md#ocr_post) | **POST** /ocr | Post an image with OCR
*BudgeaClient::OCRApi* | [**users_id_user_ocr_post**](docs/OCRApi.md#users_id_user_ocr_post) | **POST** /users/{id_user}/ocr | Post an image with OCR
*BudgeaClient::OIDCApi* | [**oidc_whitelist_id_whitelist_delete**](docs/OIDCApi.md#oidc_whitelist_id_whitelist_delete) | **DELETE** /oidc/whitelist/{id_whitelist} | Delete the supplied authorized redirect uri
*BudgeaClient::OIDCApi* | [**oidc_whitelist_id_whitelist_post**](docs/OIDCApi.md#oidc_whitelist_id_whitelist_post) | **POST** /oidc/whitelist/{id_whitelist} | Edit a authorized redirect uri
*BudgeaClient::OIDCApi* | [**oidc_whitelist_post**](docs/OIDCApi.md#oidc_whitelist_post) | **POST** /oidc/whitelist | Adds an authorized redirect uri
*BudgeaClient::PFMApi* | [**auth_confirm_new_email_post**](docs/PFMApi.md#auth_confirm_new_email_post) | **POST** /auth/confirmNewEmail | Confirm new email address
*BudgeaClient::PFMApi* | [**auth_confirm_post**](docs/PFMApi.md#auth_confirm_post) | **POST** /auth/confirm | Confirm email address
*BudgeaClient::PFMApi* | [**auth_cookie_post**](docs/PFMApi.md#auth_cookie_post) | **POST** /auth/cookie | Login with credentials and set as cookie
*BudgeaClient::PFMApi* | [**auth_register_post**](docs/PFMApi.md#auth_register_post) | **POST** /auth/register | Register to API
*BudgeaClient::PFMApi* | [**auth_token_delete**](docs/PFMApi.md#auth_token_delete) | **DELETE** /auth/token | Remove user access
*BudgeaClient::PFMApi* | [**auth_token_post**](docs/PFMApi.md#auth_token_post) | **POST** /auth/token | Login to API with credentials
*BudgeaClient::PFMApi* | [**hash_delete**](docs/PFMApi.md#hash_delete) | **DELETE** /hash | Delete the user's connections
*BudgeaClient::PFMApi* | [**users_id_user_accounts_id_account_balances_get**](docs/PFMApi.md#users_id_user_accounts_id_account_balances_get) | **GET** /users/{id_user}/accounts/{id_account}/balances | Get balances of accounts
*BudgeaClient::PFMApi* | [**users_id_user_accounts_id_account_operationsalert_get**](docs/PFMApi.md#users_id_user_accounts_id_account_operationsalert_get) | **GET** /users/{id_user}/accounts/{id_account}/operationsalert | Get a list of configurated alerts
*BudgeaClient::PFMApi* | [**users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete**](docs/PFMApi.md#users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/operationsalert/{id_operationsalert} | Delete an alert on transactions or investemens
*BudgeaClient::PFMApi* | [**users_id_user_accounts_id_account_operationsalert_id_operationsalert_put**](docs/PFMApi.md#users_id_user_accounts_id_account_operationsalert_id_operationsalert_put) | **PUT** /users/{id_user}/accounts/{id_account}/operationsalert/{id_operationsalert} | Edit an alert on transactions or investemens
*BudgeaClient::PFMApi* | [**users_id_user_accounts_id_account_operationsalert_post**](docs/PFMApi.md#users_id_user_accounts_id_account_operationsalert_post) | **POST** /users/{id_user}/accounts/{id_account}/operationsalert | Create an alert on transactions or investemens of a given user
*BudgeaClient::PFMApi* | [**users_id_user_accountsalert_get**](docs/PFMApi.md#users_id_user_accountsalert_get) | **GET** /users/{id_user}/accountsalert | Get alert configuration of a specific account
*BudgeaClient::PFMApi* | [**users_id_user_accountsalert_put**](docs/PFMApi.md#users_id_user_accountsalert_put) | **PUT** /users/{id_user}/accountsalert | Update alert configuration of an account
*BudgeaClient::PFMApi* | [**users_id_user_balances_get**](docs/PFMApi.md#users_id_user_balances_get) | **GET** /users/{id_user}/balances | Get balances of accounts
*BudgeaClient::PFMApi* | [**users_id_user_connections_id_connection_accounts_id_account_balances_get**](docs/PFMApi.md#users_id_user_connections_id_connection_accounts_id_account_balances_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/balances | Get balances of accounts
*BudgeaClient::PFMApi* | [**users_id_user_connections_id_connection_accounts_id_account_operationsalert_get**](docs/PFMApi.md#users_id_user_connections_id_connection_accounts_id_account_operationsalert_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert | Get a list of configurated alerts
*BudgeaClient::PFMApi* | [**users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete**](docs/PFMApi.md#users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert/{id_operationsalert} | Delete an alert on transactions or investemens
*BudgeaClient::PFMApi* | [**users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put**](docs/PFMApi.md#users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert/{id_operationsalert} | Edit an alert on transactions or investemens
*BudgeaClient::PFMApi* | [**users_id_user_connections_id_connection_accounts_id_account_operationsalert_post**](docs/PFMApi.md#users_id_user_connections_id_connection_accounts_id_account_operationsalert_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert | Create an alert on transactions or investemens of a given user
*BudgeaClient::PFMApi* | [**users_id_user_connections_id_connection_balances_get**](docs/PFMApi.md#users_id_user_connections_id_connection_balances_get) | **GET** /users/{id_user}/connections/{id_connection}/balances | Get balances of accounts
*BudgeaClient::PFMApi* | [**users_id_user_devices_get**](docs/PFMApi.md#users_id_user_devices_get) | **GET** /users/{id_user}/devices | Get devices
*BudgeaClient::PFMApi* | [**users_id_user_devices_id_device_delete**](docs/PFMApi.md#users_id_user_devices_id_device_delete) | **DELETE** /users/{id_user}/devices/{id_device} | Delete device.
*BudgeaClient::PFMApi* | [**users_id_user_devices_id_device_get**](docs/PFMApi.md#users_id_user_devices_id_device_get) | **GET** /users/{id_user}/devices/{id_device} | Get a device
*BudgeaClient::PFMApi* | [**users_id_user_devices_id_device_put**](docs/PFMApi.md#users_id_user_devices_id_device_put) | **PUT** /users/{id_user}/devices/{id_device} | Update attributes of the device.
*BudgeaClient::PFMApi* | [**users_id_user_devices_post**](docs/PFMApi.md#users_id_user_devices_post) | **POST** /users/{id_user}/devices | Create a device linked to specified token.
*BudgeaClient::PFMApi* | [**users_id_user_forecast_get**](docs/PFMApi.md#users_id_user_forecast_get) | **GET** /users/{id_user}/forecast | Get forecast
*BudgeaClient::PFMApi* | [**users_id_user_get**](docs/PFMApi.md#users_id_user_get) | **GET** /users/{id_user} | Get a user
*BudgeaClient::PFMApi* | [**users_id_user_operationsalert_get**](docs/PFMApi.md#users_id_user_operationsalert_get) | **GET** /users/{id_user}/operationsalert | Get a list of configurated alerts
*BudgeaClient::PFMApi* | [**users_id_user_operationsalert_id_operationsalert_delete**](docs/PFMApi.md#users_id_user_operationsalert_id_operationsalert_delete) | **DELETE** /users/{id_user}/operationsalert/{id_operationsalert} | Delete an alert on transactions or investemens
*BudgeaClient::PFMApi* | [**users_id_user_operationsalert_id_operationsalert_put**](docs/PFMApi.md#users_id_user_operationsalert_id_operationsalert_put) | **PUT** /users/{id_user}/operationsalert/{id_operationsalert} | Edit an alert on transactions or investemens
*BudgeaClient::PFMApi* | [**users_id_user_operationsalert_post**](docs/PFMApi.md#users_id_user_operationsalert_post) | **POST** /users/{id_user}/operationsalert | Create an alert on transactions or investemens of a given user
*BudgeaClient::PFMApi* | [**users_id_user_profiles_get**](docs/PFMApi.md#users_id_user_profiles_get) | **GET** /users/{id_user}/profiles | Get profiles
*BudgeaClient::PFMApi* | [**users_id_user_profiles_id_profile_get**](docs/PFMApi.md#users_id_user_profiles_id_profile_get) | **GET** /users/{id_user}/profiles/{id_profile} | Get a profile
*BudgeaClient::PFMApi* | [**users_id_user_profiles_main_get**](docs/PFMApi.md#users_id_user_profiles_main_get) | **GET** /users/{id_user}/profiles/main | Get the main profile
*BudgeaClient::PFMApi* | [**users_id_user_profiles_me_get**](docs/PFMApi.md#users_id_user_profiles_me_get) | **GET** /users/{id_user}/profiles/me | Get my profile
*BudgeaClient::PFMApi* | [**users_id_user_profiles_me_put**](docs/PFMApi.md#users_id_user_profiles_me_put) | **PUT** /users/{id_user}/profiles/me | Change settings of the profile.
*BudgeaClient::PFMApi* | [**users_id_user_resume_get**](docs/PFMApi.md#users_id_user_resume_get) | **GET** /users/{id_user}/resume | Get synthesis configuration of a specific user
*BudgeaClient::PFMApi* | [**users_id_user_resume_post**](docs/PFMApi.md#users_id_user_resume_post) | **POST** /users/{id_user}/resume | Update synthesis configuration
*BudgeaClient::ProvidersApi* | [**banks_get**](docs/ProvidersApi.md#banks_get) | **GET** /banks | Get list of connectors
*BudgeaClient::ProvidersApi* | [**banks_id_bank_logos_get**](docs/ProvidersApi.md#banks_id_bank_logos_get) | **GET** /banks/{id_bank}/logos | Get all links to the files associated with this bank.
*BudgeaClient::ProvidersApi* | [**banks_id_bank_logos_main_get**](docs/ProvidersApi.md#banks_id_bank_logos_main_get) | **GET** /banks/{id_bank}/logos/main | Get all links to the files associated with this bank.
*BudgeaClient::ProvidersApi* | [**banks_id_bank_logos_thumbnail_get**](docs/ProvidersApi.md#banks_id_bank_logos_thumbnail_get) | **GET** /banks/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
*BudgeaClient::ProvidersApi* | [**connections_get**](docs/ProvidersApi.md#connections_get) | **GET** /connections | Get connections without a user
*BudgeaClient::ProvidersApi* | [**connectors_get**](docs/ProvidersApi.md#connectors_get) | **GET** /connectors | Get list of connectors
*BudgeaClient::ProvidersApi* | [**connectors_id_bank_logos_get**](docs/ProvidersApi.md#connectors_id_bank_logos_get) | **GET** /connectors/{id_bank}/logos | Get all links to the files associated with this bank.
*BudgeaClient::ProvidersApi* | [**connectors_id_bank_logos_id_logo_delete**](docs/ProvidersApi.md#connectors_id_bank_logos_id_logo_delete) | **DELETE** /connectors/{id_bank}/logos/{id_logo} | Delete a single Logo object.
*BudgeaClient::ProvidersApi* | [**connectors_id_bank_logos_id_logo_put**](docs/ProvidersApi.md#connectors_id_bank_logos_id_logo_put) | **PUT** /connectors/{id_bank}/logos/{id_logo} | Create or Update a Bank Logo.
*BudgeaClient::ProvidersApi* | [**connectors_id_bank_logos_main_get**](docs/ProvidersApi.md#connectors_id_bank_logos_main_get) | **GET** /connectors/{id_bank}/logos/main | Get all links to the files associated with this bank.
*BudgeaClient::ProvidersApi* | [**connectors_id_bank_logos_post**](docs/ProvidersApi.md#connectors_id_bank_logos_post) | **POST** /connectors/{id_bank}/logos | Create a Bank Logo
*BudgeaClient::ProvidersApi* | [**connectors_id_bank_logos_put**](docs/ProvidersApi.md#connectors_id_bank_logos_put) | **PUT** /connectors/{id_bank}/logos | Create or Update a Bank Logo
*BudgeaClient::ProvidersApi* | [**connectors_id_bank_logos_thumbnail_get**](docs/ProvidersApi.md#connectors_id_bank_logos_thumbnail_get) | **GET** /connectors/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
*BudgeaClient::ProvidersApi* | [**connectors_post**](docs/ProvidersApi.md#connectors_post) | **POST** /connectors | Request a new connector
*BudgeaClient::ProvidersApi* | [**documenttypes_get**](docs/ProvidersApi.md#documenttypes_get) | **GET** /documenttypes | Get document types
*BudgeaClient::ProvidersApi* | [**documenttypes_id_documenttype_put**](docs/ProvidersApi.md#documenttypes_id_documenttype_put) | **PUT** /documenttypes/{id_documenttype} | Edit a document type
*BudgeaClient::ProvidersApi* | [**logs_get**](docs/ProvidersApi.md#logs_get) | **GET** /logs | Get connection logs
*BudgeaClient::ProvidersApi* | [**ocr_post**](docs/ProvidersApi.md#ocr_post) | **POST** /ocr | Post an image with OCR
*BudgeaClient::ProvidersApi* | [**providers_get**](docs/ProvidersApi.md#providers_get) | **GET** /providers | Get list of connectors
*BudgeaClient::ProvidersApi* | [**providers_id_bank_logos_get**](docs/ProvidersApi.md#providers_id_bank_logos_get) | **GET** /providers/{id_bank}/logos | Get all links to the files associated with this bank.
*BudgeaClient::ProvidersApi* | [**providers_id_bank_logos_main_get**](docs/ProvidersApi.md#providers_id_bank_logos_main_get) | **GET** /providers/{id_bank}/logos/main | Get all links to the files associated with this bank.
*BudgeaClient::ProvidersApi* | [**providers_id_bank_logos_thumbnail_get**](docs/ProvidersApi.md#providers_id_bank_logos_thumbnail_get) | **GET** /providers/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_delete**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_get**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_post**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactions_id_transaction_documents_put**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put**](docs/ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_delete**](docs/ProvidersApi.md#users_id_user_connections_delete) | **DELETE** /users/{id_user}/connections | Delete all connections
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_get**](docs/ProvidersApi.md#users_id_user_connections_get) | **GET** /users/{id_user}/connections | Get connections
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_delete) | **DELETE** /users/{id_user}/connections/{id_connection} | Delete a connection.
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_documents_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_documents_get**](docs/ProvidersApi.md#users_id_user_connections_id_connection_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_documents_post**](docs/ProvidersApi.md#users_id_user_connections_id_connection_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_documents_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_informations_get**](docs/ProvidersApi.md#users_id_user_connections_id_connection_informations_get) | **GET** /users/{id_user}/connections/{id_connection}/informations | Get connection additionnal informations
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_logs_get**](docs/ProvidersApi.md#users_id_user_connections_id_connection_logs_get) | **GET** /users/{id_user}/connections/{id_connection}/logs | Get connection logs
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_post**](docs/ProvidersApi.md#users_id_user_connections_id_connection_post) | **POST** /users/{id_user}/connections/{id_connection} | Update a connection.
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_put) | **PUT** /users/{id_user}/connections/{id_connection} | Force synchronisation of a connection.
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription} | Delete a subscription.
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get**](docs/ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post**](docs/ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_subscriptions_id_subscription_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription} | Update a subscription
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_get**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_post**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactions_id_transaction_documents_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put**](docs/ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::ProvidersApi* | [**users_id_user_connections_post**](docs/ProvidersApi.md#users_id_user_connections_post) | **POST** /users/{id_user}/connections | Add a new connection.
*BudgeaClient::ProvidersApi* | [**users_id_user_documents_delete**](docs/ProvidersApi.md#users_id_user_documents_delete) | **DELETE** /users/{id_user}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_documents_get**](docs/ProvidersApi.md#users_id_user_documents_get) | **GET** /users/{id_user}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_documents_id_document_delete) | **DELETE** /users/{id_user}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_documents_id_document_put) | **PUT** /users/{id_user}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_documents_post**](docs/ProvidersApi.md#users_id_user_documents_post) | **POST** /users/{id_user}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_documents_put**](docs/ProvidersApi.md#users_id_user_documents_put) | **PUT** /users/{id_user}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::ProvidersApi* | [**users_id_user_logs_get**](docs/ProvidersApi.md#users_id_user_logs_get) | **GET** /users/{id_user}/logs | Get connection logs
*BudgeaClient::ProvidersApi* | [**users_id_user_ocr_post**](docs/ProvidersApi.md#users_id_user_ocr_post) | **POST** /users/{id_user}/ocr | Post an image with OCR
*BudgeaClient::ProvidersApi* | [**users_id_user_subscriptions_id_subscription_delete**](docs/ProvidersApi.md#users_id_user_subscriptions_id_subscription_delete) | **DELETE** /users/{id_user}/subscriptions/{id_subscription} | Delete a subscription.
*BudgeaClient::ProvidersApi* | [**users_id_user_subscriptions_id_subscription_documents_delete**](docs/ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_delete) | **DELETE** /users/{id_user}/subscriptions/{id_subscription}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_subscriptions_id_subscription_documents_get**](docs/ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_get) | **GET** /users/{id_user}/subscriptions/{id_subscription}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_subscriptions_id_subscription_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_id_document_delete) | **DELETE** /users/{id_user}/subscriptions/{id_subscription}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_subscriptions_id_subscription_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_id_document_put) | **PUT** /users/{id_user}/subscriptions/{id_subscription}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_subscriptions_id_subscription_documents_post**](docs/ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_post) | **POST** /users/{id_user}/subscriptions/{id_subscription}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_subscriptions_id_subscription_documents_put**](docs/ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_put) | **PUT** /users/{id_user}/subscriptions/{id_subscription}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::ProvidersApi* | [**users_id_user_subscriptions_id_subscription_put**](docs/ProvidersApi.md#users_id_user_subscriptions_id_subscription_put) | **PUT** /users/{id_user}/subscriptions/{id_subscription} | Update a subscription
*BudgeaClient::ProvidersApi* | [**users_id_user_transactions_id_transaction_documents_delete**](docs/ProvidersApi.md#users_id_user_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_transactions_id_transaction_documents_get**](docs/ProvidersApi.md#users_id_user_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/transactions/{id_transaction}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_transactions_id_transaction_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_transactions_id_transaction_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/transactions/{id_transaction}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_transactions_id_transaction_documents_post**](docs/ProvidersApi.md#users_id_user_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/transactions/{id_transaction}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_transactions_id_transaction_documents_put**](docs/ProvidersApi.md#users_id_user_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::ProvidersApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_delete**](docs/ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
*BudgeaClient::ProvidersApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_get**](docs/ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
*BudgeaClient::ProvidersApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](docs/ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
*BudgeaClient::ProvidersApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put**](docs/ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
*BudgeaClient::ProvidersApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_post**](docs/ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
*BudgeaClient::ProvidersApi* | [**users_id_user_transactionsclusters_id_transactions_cluster_documents_put**](docs/ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
*BudgeaClient::RecipientsApi* | [**users_id_user_accounts_id_account_recipients_post**](docs/RecipientsApi.md#users_id_user_accounts_id_account_recipients_post) | **POST** /users/{id_user}/accounts/{id_account}/recipients | Add a recipient.
*BudgeaClient::RecipientsApi* | [**users_id_user_connections_id_connection_accounts_id_account_recipients_post**](docs/RecipientsApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients | Add a recipient.
*BudgeaClient::RecipientsApi* | [**users_id_user_connections_id_connection_recipients_post**](docs/RecipientsApi.md#users_id_user_connections_id_connection_recipients_post) | **POST** /users/{id_user}/connections/{id_connection}/recipients | Add a recipient.
*BudgeaClient::RecipientsApi* | [**users_id_user_recipients_post**](docs/RecipientsApi.md#users_id_user_recipients_post) | **POST** /users/{id_user}/recipients | Add a recipient.
*BudgeaClient::TermsApi* | [**terms_get**](docs/TermsApi.md#terms_get) | **GET** /terms | Return the current terms and the content of the associated file
*BudgeaClient::TermsApi* | [**terms_post**](docs/TermsApi.md#terms_post) | **POST** /terms | Register a version of 'Terms of Service' in database
*BudgeaClient::TermsApi* | [**users_id_user_terms_get**](docs/TermsApi.md#users_id_user_terms_get) | **GET** /users/{id_user}/terms | Get active terms object for a specific user, only one terms can be active
*BudgeaClient::TermsApi* | [**users_id_user_terms_post**](docs/TermsApi.md#users_id_user_terms_post) | **POST** /users/{id_user}/terms | Register user's consent for a specific terms id
*BudgeaClient::TransfersApi* | [**users_id_user_accounts_id_account_recipients_get**](docs/TransfersApi.md#users_id_user_accounts_id_account_recipients_get) | **GET** /users/{id_user}/accounts/{id_account}/recipients | Returns the list of recipients
*BudgeaClient::TransfersApi* | [**users_id_user_accounts_id_account_recipients_id_recipient_post**](docs/TransfersApi.md#users_id_user_accounts_id_account_recipients_id_recipient_post) | **POST** /users/{id_user}/accounts/{id_account}/recipients/{id_recipient} | Continue addition of a recipient.
*BudgeaClient::TransfersApi* | [**users_id_user_accounts_id_account_recipients_id_recipient_transfers_get**](docs/TransfersApi.md#users_id_user_accounts_id_account_recipients_id_recipient_transfers_get) | **GET** /users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers | Get transfers
*BudgeaClient::TransfersApi* | [**users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete**](docs/TransfersApi.md#users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer} | Cancel a transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post**](docs/TransfersApi.md#users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post) | **POST** /users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer} | Execute or edit a Transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_accounts_id_account_recipients_id_recipient_transfers_post**](docs/TransfersApi.md#users_id_user_accounts_id_account_recipients_id_recipient_transfers_post) | **POST** /users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers | Create a transfer object.
*BudgeaClient::TransfersApi* | [**users_id_user_accounts_id_account_transfers_get**](docs/TransfersApi.md#users_id_user_accounts_id_account_transfers_get) | **GET** /users/{id_user}/accounts/{id_account}/transfers | Get transfers
*BudgeaClient::TransfersApi* | [**users_id_user_accounts_id_account_transfers_id_transfer_delete**](docs/TransfersApi.md#users_id_user_accounts_id_account_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transfers/{id_transfer} | Cancel a transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_accounts_id_account_transfers_id_transfer_post**](docs/TransfersApi.md#users_id_user_accounts_id_account_transfers_id_transfer_post) | **POST** /users/{id_user}/accounts/{id_account}/transfers/{id_transfer} | Execute or edit a Transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_accounts_id_account_transfers_post**](docs/TransfersApi.md#users_id_user_accounts_id_account_transfers_post) | **POST** /users/{id_user}/accounts/{id_account}/transfers | Create a transfer object.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_accounts_id_account_recipients_get**](docs/TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients | Returns the list of recipients
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post**](docs/TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient} | Continue addition of a recipient.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get**](docs/TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers | Get transfers
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete**](docs/TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer} | Cancel a transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post**](docs/TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer} | Execute or edit a Transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post**](docs/TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers | Create a transfer object.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transfers_get**](docs/TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_transfers_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers | Get transfers
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete**](docs/TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers/{id_transfer} | Cancel a transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post**](docs/TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers/{id_transfer} | Execute or edit a Transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_accounts_id_account_transfers_post**](docs/TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_transfers_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers | Create a transfer object.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_recipients_get**](docs/TransfersApi.md#users_id_user_connections_id_connection_recipients_get) | **GET** /users/{id_user}/connections/{id_connection}/recipients | Returns the list of recipients
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_recipients_id_recipient_post**](docs/TransfersApi.md#users_id_user_connections_id_connection_recipients_id_recipient_post) | **POST** /users/{id_user}/connections/{id_connection}/recipients/{id_recipient} | Continue addition of a recipient.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_recipients_id_recipient_transfers_get**](docs/TransfersApi.md#users_id_user_connections_id_connection_recipients_id_recipient_transfers_get) | **GET** /users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers | Get transfers
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete**](docs/TransfersApi.md#users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers/{id_transfer} | Cancel a transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post**](docs/TransfersApi.md#users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post) | **POST** /users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers/{id_transfer} | Execute or edit a Transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_recipients_id_recipient_transfers_post**](docs/TransfersApi.md#users_id_user_connections_id_connection_recipients_id_recipient_transfers_post) | **POST** /users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers | Create a transfer object.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_transfers_get**](docs/TransfersApi.md#users_id_user_connections_id_connection_transfers_get) | **GET** /users/{id_user}/connections/{id_connection}/transfers | Get transfers
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_transfers_id_transfer_delete**](docs/TransfersApi.md#users_id_user_connections_id_connection_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transfers/{id_transfer} | Cancel a transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_transfers_id_transfer_post**](docs/TransfersApi.md#users_id_user_connections_id_connection_transfers_id_transfer_post) | **POST** /users/{id_user}/connections/{id_connection}/transfers/{id_transfer} | Execute or edit a Transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_connections_id_connection_transfers_post**](docs/TransfersApi.md#users_id_user_connections_id_connection_transfers_post) | **POST** /users/{id_user}/connections/{id_connection}/transfers | Create a transfer object.
*BudgeaClient::TransfersApi* | [**users_id_user_recipients_get**](docs/TransfersApi.md#users_id_user_recipients_get) | **GET** /users/{id_user}/recipients | Returns the list of recipients
*BudgeaClient::TransfersApi* | [**users_id_user_recipients_id_recipient_post**](docs/TransfersApi.md#users_id_user_recipients_id_recipient_post) | **POST** /users/{id_user}/recipients/{id_recipient} | Continue addition of a recipient.
*BudgeaClient::TransfersApi* | [**users_id_user_recipients_id_recipient_transfers_get**](docs/TransfersApi.md#users_id_user_recipients_id_recipient_transfers_get) | **GET** /users/{id_user}/recipients/{id_recipient}/transfers | Get transfers
*BudgeaClient::TransfersApi* | [**users_id_user_recipients_id_recipient_transfers_id_transfer_delete**](docs/TransfersApi.md#users_id_user_recipients_id_recipient_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/recipients/{id_recipient}/transfers/{id_transfer} | Cancel a transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_recipients_id_recipient_transfers_id_transfer_post**](docs/TransfersApi.md#users_id_user_recipients_id_recipient_transfers_id_transfer_post) | **POST** /users/{id_user}/recipients/{id_recipient}/transfers/{id_transfer} | Execute or edit a Transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_recipients_id_recipient_transfers_post**](docs/TransfersApi.md#users_id_user_recipients_id_recipient_transfers_post) | **POST** /users/{id_user}/recipients/{id_recipient}/transfers | Create a transfer object.
*BudgeaClient::TransfersApi* | [**users_id_user_transfers_get**](docs/TransfersApi.md#users_id_user_transfers_get) | **GET** /users/{id_user}/transfers | Get transfers
*BudgeaClient::TransfersApi* | [**users_id_user_transfers_id_transfer_delete**](docs/TransfersApi.md#users_id_user_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/transfers/{id_transfer} | Cancel a transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_transfers_id_transfer_post**](docs/TransfersApi.md#users_id_user_transfers_id_transfer_post) | **POST** /users/{id_user}/transfers/{id_transfer} | Execute or edit a Transfer.
*BudgeaClient::TransfersApi* | [**users_id_user_transfers_post**](docs/TransfersApi.md#users_id_user_transfers_post) | **POST** /users/{id_user}/transfers | Create a transfer object.
*BudgeaClient::UsersManagementApi* | [**hash_delete**](docs/UsersManagementApi.md#hash_delete) | **DELETE** /hash | Delete the user's connections
*BudgeaClient::UsersManagementApi* | [**users_get**](docs/UsersManagementApi.md#users_get) | **GET** /users | Get users
*BudgeaClient::UsersManagementApi* | [**users_id_user_config_delete**](docs/UsersManagementApi.md#users_id_user_config_delete) | **DELETE** /users/{id_user}/config | Delete the given user configurations. deletions on keys prefixed by 'biapi.' (except callback_url) are ignored
*BudgeaClient::UsersManagementApi* | [**users_id_user_config_get**](docs/UsersManagementApi.md#users_id_user_config_get) | **GET** /users/{id_user}/config | Get configuration of a user.
*BudgeaClient::UsersManagementApi* | [**users_id_user_config_post**](docs/UsersManagementApi.md#users_id_user_config_post) | **POST** /users/{id_user}/config | Change configuration of a user. modifications on keys prefixed by 'biapi.' (except callback_url) are ignored
*BudgeaClient::UsersManagementApi* | [**users_id_user_delete**](docs/UsersManagementApi.md#users_id_user_delete) | **DELETE** /users/{id_user} | Delete the user
*BudgeaClient::UsersManagementApi* | [**users_id_user_get**](docs/UsersManagementApi.md#users_id_user_get) | **GET** /users/{id_user} | Get a user
*BudgeaClient::UsersManagementApi* | [**users_id_user_profiles_get**](docs/UsersManagementApi.md#users_id_user_profiles_get) | **GET** /users/{id_user}/profiles | Get profiles
*BudgeaClient::UsersManagementApi* | [**users_id_user_profiles_id_profile_get**](docs/UsersManagementApi.md#users_id_user_profiles_id_profile_get) | **GET** /users/{id_user}/profiles/{id_profile} | Get a profile
*BudgeaClient::UsersManagementApi* | [**users_id_user_profiles_main_get**](docs/UsersManagementApi.md#users_id_user_profiles_main_get) | **GET** /users/{id_user}/profiles/main | Get the main profile
*BudgeaClient::UsersManagementApi* | [**users_id_user_profiles_me_get**](docs/UsersManagementApi.md#users_id_user_profiles_me_get) | **GET** /users/{id_user}/profiles/me | Get my profile
*BudgeaClient::UsersManagementApi* | [**users_id_user_token_post**](docs/UsersManagementApi.md#users_id_user_token_post) | **POST** /users/{id_user}/token | Create a token
*BudgeaClient::WealthApi* | [**finance_securities_get**](docs/WealthApi.md#finance_securities_get) | **GET** /finance/securities | Get securities
*BudgeaClient::WealthApi* | [**finance_securities_id_security_history_get**](docs/WealthApi.md#finance_securities_id_security_history_get) | **GET** /finance/securities/{id_security}/history | Get connection logs
*BudgeaClient::WealthApi* | [**users_id_user_accounts_id_account_investments_get**](docs/WealthApi.md#users_id_user_accounts_id_account_investments_get) | **GET** /users/{id_user}/accounts/{id_account}/investments | Get investments
*BudgeaClient::WealthApi* | [**users_id_user_accounts_id_account_investments_id_investment_history_get**](docs/WealthApi.md#users_id_user_accounts_id_account_investments_id_investment_history_get) | **GET** /users/{id_user}/accounts/{id_account}/investments/{id_investment}/history | Get investment values
*BudgeaClient::WealthApi* | [**users_id_user_accounts_id_account_investments_id_investment_security_history_get**](docs/WealthApi.md#users_id_user_accounts_id_account_investments_id_investment_security_history_get) | **GET** /users/{id_user}/accounts/{id_account}/investments/{id_investment}/security/history | Get connection logs
*BudgeaClient::WealthApi* | [**users_id_user_connections_id_connection_accounts_id_account_investments_get**](docs/WealthApi.md#users_id_user_connections_id_connection_accounts_id_account_investments_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/investments | Get investments
*BudgeaClient::WealthApi* | [**users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get**](docs/WealthApi.md#users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/investments/{id_investment}/history | Get investment values
*BudgeaClient::WealthApi* | [**users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get**](docs/WealthApi.md#users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/investments/{id_investment}/security/history | Get connection logs
*BudgeaClient::WealthApi* | [**users_id_user_connections_id_connection_investments_get**](docs/WealthApi.md#users_id_user_connections_id_connection_investments_get) | **GET** /users/{id_user}/connections/{id_connection}/investments | Get investments
*BudgeaClient::WealthApi* | [**users_id_user_connections_id_connection_investments_id_investment_history_get**](docs/WealthApi.md#users_id_user_connections_id_connection_investments_id_investment_history_get) | **GET** /users/{id_user}/connections/{id_connection}/investments/{id_investment}/history | Get investment values
*BudgeaClient::WealthApi* | [**users_id_user_connections_id_connection_investments_id_investment_security_history_get**](docs/WealthApi.md#users_id_user_connections_id_connection_investments_id_investment_security_history_get) | **GET** /users/{id_user}/connections/{id_connection}/investments/{id_investment}/security/history | Get connection logs
*BudgeaClient::WealthApi* | [**users_id_user_investments_get**](docs/WealthApi.md#users_id_user_investments_get) | **GET** /users/{id_user}/investments | Get investments
*BudgeaClient::WealthApi* | [**users_id_user_investments_id_investment_history_get**](docs/WealthApi.md#users_id_user_investments_id_investment_history_get) | **GET** /users/{id_user}/investments/{id_investment}/history | Get investment values
*BudgeaClient::WealthApi* | [**users_id_user_investments_id_investment_security_history_get**](docs/WealthApi.md#users_id_user_investments_id_investment_security_history_get) | **GET** /users/{id_user}/investments/{id_investment}/security/history | Get connection logs


## Documentation for Models

 - [BudgeaClient::Access](docs/Access.md)
 - [BudgeaClient::Account](docs/Account.md)
 - [BudgeaClient::AccountLog](docs/AccountLog.md)
 - [BudgeaClient::AccountType](docs/AccountType.md)
 - [BudgeaClient::Alert](docs/Alert.md)
 - [BudgeaClient::Bank](docs/Bank.md)
 - [BudgeaClient::BankCategory](docs/BankCategory.md)
 - [BudgeaClient::Category](docs/Category.md)
 - [BudgeaClient::Client](docs/Client.md)
 - [BudgeaClient::Connection](docs/Connection.md)
 - [BudgeaClient::ConnectionContact](docs/ConnectionContact.md)
 - [BudgeaClient::ConnectionLog](docs/ConnectionLog.md)
 - [BudgeaClient::ConnectorLogo](docs/ConnectorLogo.md)
 - [BudgeaClient::Currency](docs/Currency.md)
 - [BudgeaClient::Device](docs/Device.md)
 - [BudgeaClient::Document](docs/Document.md)
 - [BudgeaClient::DocumentType](docs/DocumentType.md)
 - [BudgeaClient::Field](docs/Field.md)
 - [BudgeaClient::FieldValue](docs/FieldValue.md)
 - [BudgeaClient::File](docs/File.md)
 - [BudgeaClient::Group](docs/Group.md)
 - [BudgeaClient::HashTable](docs/HashTable.md)
 - [BudgeaClient::InlineResponse200](docs/InlineResponse200.md)
 - [BudgeaClient::InlineResponse2001](docs/InlineResponse2001.md)
 - [BudgeaClient::InlineResponse20010](docs/InlineResponse20010.md)
 - [BudgeaClient::InlineResponse20011](docs/InlineResponse20011.md)
 - [BudgeaClient::InlineResponse20012](docs/InlineResponse20012.md)
 - [BudgeaClient::InlineResponse20013](docs/InlineResponse20013.md)
 - [BudgeaClient::InlineResponse20014](docs/InlineResponse20014.md)
 - [BudgeaClient::InlineResponse20015](docs/InlineResponse20015.md)
 - [BudgeaClient::InlineResponse20016](docs/InlineResponse20016.md)
 - [BudgeaClient::InlineResponse20017](docs/InlineResponse20017.md)
 - [BudgeaClient::InlineResponse20018](docs/InlineResponse20018.md)
 - [BudgeaClient::InlineResponse20019](docs/InlineResponse20019.md)
 - [BudgeaClient::InlineResponse2002](docs/InlineResponse2002.md)
 - [BudgeaClient::InlineResponse20020](docs/InlineResponse20020.md)
 - [BudgeaClient::InlineResponse20021](docs/InlineResponse20021.md)
 - [BudgeaClient::InlineResponse20022](docs/InlineResponse20022.md)
 - [BudgeaClient::InlineResponse20023](docs/InlineResponse20023.md)
 - [BudgeaClient::InlineResponse20024](docs/InlineResponse20024.md)
 - [BudgeaClient::InlineResponse20025](docs/InlineResponse20025.md)
 - [BudgeaClient::InlineResponse20026](docs/InlineResponse20026.md)
 - [BudgeaClient::InlineResponse20027](docs/InlineResponse20027.md)
 - [BudgeaClient::InlineResponse20028](docs/InlineResponse20028.md)
 - [BudgeaClient::InlineResponse20029](docs/InlineResponse20029.md)
 - [BudgeaClient::InlineResponse2003](docs/InlineResponse2003.md)
 - [BudgeaClient::InlineResponse20030](docs/InlineResponse20030.md)
 - [BudgeaClient::InlineResponse20031](docs/InlineResponse20031.md)
 - [BudgeaClient::InlineResponse20032](docs/InlineResponse20032.md)
 - [BudgeaClient::InlineResponse20033](docs/InlineResponse20033.md)
 - [BudgeaClient::InlineResponse2004](docs/InlineResponse2004.md)
 - [BudgeaClient::InlineResponse2005](docs/InlineResponse2005.md)
 - [BudgeaClient::InlineResponse2006](docs/InlineResponse2006.md)
 - [BudgeaClient::InlineResponse2007](docs/InlineResponse2007.md)
 - [BudgeaClient::InlineResponse2008](docs/InlineResponse2008.md)
 - [BudgeaClient::InlineResponse2009](docs/InlineResponse2009.md)
 - [BudgeaClient::Investment](docs/Investment.md)
 - [BudgeaClient::InvestmentValue](docs/InvestmentValue.md)
 - [BudgeaClient::Invite](docs/Invite.md)
 - [BudgeaClient::LockedUser](docs/LockedUser.md)
 - [BudgeaClient::OidcWhitelist](docs/OidcWhitelist.md)
 - [BudgeaClient::Pocket](docs/Pocket.md)
 - [BudgeaClient::Profile](docs/Profile.md)
 - [BudgeaClient::Project](docs/Project.md)
 - [BudgeaClient::ProjectType](docs/ProjectType.md)
 - [BudgeaClient::Recipient](docs/Recipient.md)
 - [BudgeaClient::Security](docs/Security.md)
 - [BudgeaClient::Subscription](docs/Subscription.md)
 - [BudgeaClient::TermsOfService](docs/TermsOfService.md)
 - [BudgeaClient::Transaction](docs/Transaction.md)
 - [BudgeaClient::TransactionInformation](docs/TransactionInformation.md)
 - [BudgeaClient::TransactionsCluster](docs/TransactionsCluster.md)
 - [BudgeaClient::Transfer](docs/Transfer.md)
 - [BudgeaClient::User](docs/User.md)
 - [BudgeaClient::UserAlert](docs/UserAlert.md)
 - [BudgeaClient::Webhook](docs/Webhook.md)


## Documentation for Authorization


### api_key

- **Type**: API key
- **API key parameter name**: Authorization
- **Location**: HTTP header

