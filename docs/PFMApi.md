# BudgeaClient::PFMApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_confirm_new_email_post**](PFMApi.md#auth_confirm_new_email_post) | **POST** /auth/confirmNewEmail | Confirm new email address
[**auth_confirm_post**](PFMApi.md#auth_confirm_post) | **POST** /auth/confirm | Confirm email address
[**auth_cookie_post**](PFMApi.md#auth_cookie_post) | **POST** /auth/cookie | Login with credentials and set as cookie
[**auth_register_post**](PFMApi.md#auth_register_post) | **POST** /auth/register | Register to API
[**auth_token_delete**](PFMApi.md#auth_token_delete) | **DELETE** /auth/token | Remove user access
[**auth_token_post**](PFMApi.md#auth_token_post) | **POST** /auth/token | Login to API with credentials
[**hash_delete**](PFMApi.md#hash_delete) | **DELETE** /hash | Delete the user&#39;s connections
[**users_id_user_accounts_id_account_balances_get**](PFMApi.md#users_id_user_accounts_id_account_balances_get) | **GET** /users/{id_user}/accounts/{id_account}/balances | Get balances of accounts
[**users_id_user_accounts_id_account_operationsalert_get**](PFMApi.md#users_id_user_accounts_id_account_operationsalert_get) | **GET** /users/{id_user}/accounts/{id_account}/operationsalert | Get a list of configurated alerts
[**users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete**](PFMApi.md#users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/operationsalert/{id_operationsalert} | Delete an alert on transactions or investemens
[**users_id_user_accounts_id_account_operationsalert_id_operationsalert_put**](PFMApi.md#users_id_user_accounts_id_account_operationsalert_id_operationsalert_put) | **PUT** /users/{id_user}/accounts/{id_account}/operationsalert/{id_operationsalert} | Edit an alert on transactions or investemens
[**users_id_user_accounts_id_account_operationsalert_post**](PFMApi.md#users_id_user_accounts_id_account_operationsalert_post) | **POST** /users/{id_user}/accounts/{id_account}/operationsalert | Create an alert on transactions or investemens of a given user
[**users_id_user_accountsalert_get**](PFMApi.md#users_id_user_accountsalert_get) | **GET** /users/{id_user}/accountsalert | Get alert configuration of a specific account
[**users_id_user_accountsalert_put**](PFMApi.md#users_id_user_accountsalert_put) | **PUT** /users/{id_user}/accountsalert | Update alert configuration of an account
[**users_id_user_balances_get**](PFMApi.md#users_id_user_balances_get) | **GET** /users/{id_user}/balances | Get balances of accounts
[**users_id_user_connections_id_connection_accounts_id_account_balances_get**](PFMApi.md#users_id_user_connections_id_connection_accounts_id_account_balances_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/balances | Get balances of accounts
[**users_id_user_connections_id_connection_accounts_id_account_operationsalert_get**](PFMApi.md#users_id_user_connections_id_connection_accounts_id_account_operationsalert_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert | Get a list of configurated alerts
[**users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete**](PFMApi.md#users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert/{id_operationsalert} | Delete an alert on transactions or investments
[**users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put**](PFMApi.md#users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert/{id_operationsalert} | Edit an alert on transactions or investments
[**users_id_user_connections_id_connection_accounts_id_account_operationsalert_post**](PFMApi.md#users_id_user_connections_id_connection_accounts_id_account_operationsalert_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert | Create an alert on transactions or investemens of a given user
[**users_id_user_connections_id_connection_balances_get**](PFMApi.md#users_id_user_connections_id_connection_balances_get) | **GET** /users/{id_user}/connections/{id_connection}/balances | Get balances of accounts
[**users_id_user_devices_get**](PFMApi.md#users_id_user_devices_get) | **GET** /users/{id_user}/devices | Get devices
[**users_id_user_devices_id_device_delete**](PFMApi.md#users_id_user_devices_id_device_delete) | **DELETE** /users/{id_user}/devices/{id_device} | Delete device.
[**users_id_user_devices_id_device_get**](PFMApi.md#users_id_user_devices_id_device_get) | **GET** /users/{id_user}/devices/{id_device} | Get a device
[**users_id_user_devices_id_device_put**](PFMApi.md#users_id_user_devices_id_device_put) | **PUT** /users/{id_user}/devices/{id_device} | Update attributes of the device.
[**users_id_user_devices_post**](PFMApi.md#users_id_user_devices_post) | **POST** /users/{id_user}/devices | Create a device linked to specified token.
[**users_id_user_forecast_get**](PFMApi.md#users_id_user_forecast_get) | **GET** /users/{id_user}/forecast | Get forecast
[**users_id_user_get**](PFMApi.md#users_id_user_get) | **GET** /users/{id_user} | Get a user
[**users_id_user_operationsalert_get**](PFMApi.md#users_id_user_operationsalert_get) | **GET** /users/{id_user}/operationsalert | Get a list of configurated alerts
[**users_id_user_operationsalert_id_operationsalert_delete**](PFMApi.md#users_id_user_operationsalert_id_operationsalert_delete) | **DELETE** /users/{id_user}/operationsalert/{id_operationsalert} | Delete an alert on transactions or investemens
[**users_id_user_operationsalert_id_operationsalert_put**](PFMApi.md#users_id_user_operationsalert_id_operationsalert_put) | **PUT** /users/{id_user}/operationsalert/{id_operationsalert} | Edit an alert on transactions or investemens
[**users_id_user_operationsalert_post**](PFMApi.md#users_id_user_operationsalert_post) | **POST** /users/{id_user}/operationsalert | Create an alert on transactions or investemens of a given user
[**users_id_user_profiles_get**](PFMApi.md#users_id_user_profiles_get) | **GET** /users/{id_user}/profiles | Get profiles
[**users_id_user_profiles_id_profile_get**](PFMApi.md#users_id_user_profiles_id_profile_get) | **GET** /users/{id_user}/profiles/{id_profile} | Get a profile
[**users_id_user_profiles_main_get**](PFMApi.md#users_id_user_profiles_main_get) | **GET** /users/{id_user}/profiles/main | Get the main profile
[**users_id_user_profiles_me_get**](PFMApi.md#users_id_user_profiles_me_get) | **GET** /users/{id_user}/profiles/me | Get my profile
[**users_id_user_profiles_me_put**](PFMApi.md#users_id_user_profiles_me_put) | **PUT** /users/{id_user}/profiles/me | Change settings of the profile.
[**users_id_user_resume_get**](PFMApi.md#users_id_user_resume_get) | **GET** /users/{id_user}/resume | Get synthesis configuration of a specific user
[**users_id_user_resume_post**](PFMApi.md#users_id_user_resume_post) | **POST** /users/{id_user}/resume | Update synthesis configuration


# **auth_confirm_new_email_post**
> auth_confirm_new_email_post(token)

Confirm new email address



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

token = 'token_example' # String | token received by email


begin
  #Confirm new email address
  api_instance.auth_confirm_new_email_post(token)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->auth_confirm_new_email_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| token received by email | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **auth_confirm_post**
> InlineResponse2001 auth_confirm_post(token, application)

Confirm email address

<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

token = 'token_example' # String | token received in email

application = 'application_example' # String | application in use


begin
  #Confirm email address
  result = api_instance.auth_confirm_post(token, application)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->auth_confirm_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **token** | **String**| token received in email | 
 **application** | **String**| application in use | 

### Return type

[**InlineResponse2001**](InlineResponse2001.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **auth_cookie_post**
> auth_cookie_post(username, password, application, opts)

Login with credentials and set as cookie



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

username = 'username_example' # String | username

password = 'password_example' # String | password

application = 'application_example' # String | application name

opts = { 
  scope: 'scope_example' # String | scope requested for the token
}

begin
  #Login with credentials and set as cookie
  api_instance.auth_cookie_post(username, password, application, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->auth_cookie_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username | 
 **password** | **String**| password | 
 **application** | **String**| application name | 
 **scope** | **String**| scope requested for the token | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **auth_register_post**
> InlineResponse2004 auth_register_post(email, password, application, opts)

Register to API

Create a new user with his email address and password.<br><br><br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

email = 'email_example' # String | email address

password = 'password_example' # String | password

application = 'application_example' # String | application in use

opts = { 
  sponsor: 'sponsor_example', # String | sponsor code to get advantages
  notification_token: 'notification_token_example' # String | APNS or GCM token to send notifications to device
}

begin
  #Register to API
  result = api_instance.auth_register_post(email, password, application, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->auth_register_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| email address | 
 **password** | **String**| password | 
 **application** | **String**| application in use | 
 **sponsor** | **String**| sponsor code to get advantages | [optional] 
 **notification_token** | **String**| APNS or GCM token to send notifications to device | [optional] 

### Return type

[**InlineResponse2004**](InlineResponse2004.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **auth_token_delete**
> auth_token_delete

Remove user access

This endpoint removes the token in use.<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

begin
  #Remove user access
  api_instance.auth_token_delete
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->auth_token_delete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **auth_token_post**
> InlineResponse2005 auth_token_post(username, password, application, opts)

Login to API with credentials

Request a new user token by giving an username and a password.<br><br><br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

username = 'username_example' # String | username

password = 'password_example' # String | password

application = 'application_example' # String | application name

opts = { 
  scope: 'scope_example' # String | scope requested for the token
}

begin
  #Login to API with credentials
  result = api_instance.auth_token_post(username, password, application, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->auth_token_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**| username | 
 **password** | **String**| password | 
 **application** | **String**| application name | 
 **scope** | **String**| scope requested for the token | [optional] 

### Return type

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **hash_delete**
> hash_delete

Delete the user's connections

deletes all connections of the user given his hash<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

begin
  #Delete the user's connections
  api_instance.hash_delete
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->hash_delete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accounts_id_account_balances_get**
> users_id_user_accounts_id_account_balances_get(id_user, id_account, opts)

Get balances of accounts

Get balance (income/outcome/balance) of enabled accounts for the given period.<br><br>By default, min_date and max_date are the current month, and period is a single month.<br><br>The period is composed with units (days, months, years) and numbers. You can give for example \"1month\", \"15days\", \"1year6months\", etc.<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximal (inclusive) date
  period: 'period_example' # String | split output with the given period (default: month)
}

begin
  #Get balances of accounts
  api_instance.users_id_user_accounts_id_account_balances_get(id_user, id_account, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_accounts_id_account_balances_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximal (inclusive) date | [optional] 
 **period** | **String**| split output with the given period (default: month) | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accounts_id_account_operationsalert_get**
> InlineResponse20025 users_id_user_accounts_id_account_operationsalert_get(id_user, id_account, opts)

Get a list of configurated alerts

<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get a list of configurated alerts
  result = api_instance.users_id_user_accounts_id_account_operationsalert_get(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_accounts_id_account_operationsalert_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete**
> UserAlert users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete(id_user, id_account, id_operationsalert, opts)

Delete an alert on transactions or investemens

<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_operationsalert = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete an alert on transactions or investemens
  result = api_instance.users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete(id_user, id_account, id_operationsalert, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_operationsalert** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**UserAlert**](UserAlert.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accounts_id_account_operationsalert_id_operationsalert_put**
> UserAlert users_id_user_accounts_id_account_operationsalert_id_operationsalert_put(id_user, id_account, id_operationsalert, opts)

Edit an alert on transactions or investemens



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_operationsalert = 56 # Integer | 

opts = { 
  type: 'type_example', # String | parameter to choose the scope of the alert. accepted: transactions, investements
  income_max: 56, # Integer | capital gain thresholds
  expense_max: 56, # Integer | capital loss thresholds
  value_type: 'value_type_example', # String | whether the threshold is given in absolut value or percent. accepted: percent, flat
  date_range: 56, # Integer | (number of days) range on which the analysis has to be done
  expand: 'expand_example' # String | 
}

begin
  #Edit an alert on transactions or investemens
  result = api_instance.users_id_user_accounts_id_account_operationsalert_id_operationsalert_put(id_user, id_account, id_operationsalert, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_accounts_id_account_operationsalert_id_operationsalert_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_operationsalert** | **Integer**|  | 
 **type** | **String**| parameter to choose the scope of the alert. accepted: transactions, investements | [optional] 
 **income_max** | **Integer**| capital gain thresholds | [optional] 
 **expense_max** | **Integer**| capital loss thresholds | [optional] 
 **value_type** | **String**| whether the threshold is given in absolut value or percent. accepted: percent, flat | [optional] 
 **date_range** | **Integer**| (number of days) range on which the analysis has to be done | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**UserAlert**](UserAlert.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accounts_id_account_operationsalert_post**
> UserAlert users_id_user_accounts_id_account_operationsalert_post(id_user, id_account, opts)

Create an alert on transactions or investemens of a given user



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  type: 'type_example', # String | parameter to choose the scope of the alert. accepted: transactions, investements
  income_max: 56, # Integer | capital gain thresholds
  expense_max: 56, # Integer | capital loss thresholds
  value_type: 'value_type_example', # String | whether the threshold is given in absolut value or percent. accepted: percent, flat
  date_range: 56, # Integer | (number of days) range on which the analysis has to be done
  expand: 'expand_example' # String | 
}

begin
  #Create an alert on transactions or investemens of a given user
  result = api_instance.users_id_user_accounts_id_account_operationsalert_post(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_accounts_id_account_operationsalert_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **type** | **String**| parameter to choose the scope of the alert. accepted: transactions, investements | [optional] 
 **income_max** | **Integer**| capital gain thresholds | [optional] 
 **expense_max** | **Integer**| capital loss thresholds | [optional] 
 **value_type** | **String**| whether the threshold is given in absolut value or percent. accepted: percent, flat | [optional] 
 **date_range** | **Integer**| (number of days) range on which the analysis has to be done | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**UserAlert**](UserAlert.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accountsalert_get**
> Object users_id_user_accountsalert_get(id_user)

Get alert configuration of a specific account

<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'


begin
  #Get alert configuration of a specific account
  result = api_instance.users_id_user_accountsalert_get(id_user)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_accountsalert_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accountsalert_put**
> Object users_id_user_accountsalert_put(id_user, opts)

Update alert configuration of an account

It updates the alert configuration of a specific account<br><br><br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expense_max: 56, # Integer | threshold from which an alert has to be sent for a high expense
  accounts: 56, # Integer | list of accounts (id coma separated) on wich the alert has to be applied. If 'all' is given, it is applied on all accounts. default: all
  income_max: 56, # Integer | threshold from which an alert has to be sent for a high income
  balance_min2: 56, # Integer | second threshold from which an alert has to be sent for a low balance
  enabled: true # BOOLEAN | if false, the alert is not taken into account
}

begin
  #Update alert configuration of an account
  result = api_instance.users_id_user_accountsalert_put(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_accountsalert_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expense_max** | **Integer**| threshold from which an alert has to be sent for a high expense | [optional] 
 **accounts** | **Integer**| list of accounts (id coma separated) on wich the alert has to be applied. If &#39;all&#39; is given, it is applied on all accounts. default: all | [optional] 
 **income_max** | **Integer**| threshold from which an alert has to be sent for a high income | [optional] 
 **balance_min2** | **Integer**| second threshold from which an alert has to be sent for a low balance | [optional] 
 **enabled** | **BOOLEAN**| if false, the alert is not taken into account | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_balances_get**
> users_id_user_balances_get(id_user, opts)

Get balances of accounts

Get balance (income/outcome/balance) of enabled accounts for the given period.<br><br>By default, min_date and max_date are the current month, and period is a single month.<br><br>The period is composed with units (days, months, years) and numbers. You can give for example \"1month\", \"15days\", \"1year6months\", etc.<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximal (inclusive) date
  period: 'period_example' # String | split output with the given period (default: month)
}

begin
  #Get balances of accounts
  api_instance.users_id_user_balances_get(id_user, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_balances_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximal (inclusive) date | [optional] 
 **period** | **String**| split output with the given period (default: month) | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_balances_get**
> users_id_user_connections_id_connection_accounts_id_account_balances_get(id_user, id_connection, id_account, opts)

Get balances of accounts

Get balance (income/outcome/balance) of enabled accounts for the given period.<br><br>By default, min_date and max_date are the current month, and period is a single month.<br><br>The period is composed with units (days, months, years) and numbers. You can give for example \"1month\", \"15days\", \"1year6months\", etc.<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximal (inclusive) date
  period: 'period_example' # String | split output with the given period (default: month)
}

begin
  #Get balances of accounts
  api_instance.users_id_user_connections_id_connection_accounts_id_account_balances_get(id_user, id_connection, id_account, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_connections_id_connection_accounts_id_account_balances_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximal (inclusive) date | [optional] 
 **period** | **String**| split output with the given period (default: month) | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_operationsalert_get**
> InlineResponse20025 users_id_user_connections_id_connection_accounts_id_account_operationsalert_get(id_user, id_connection, id_account, opts)

Get a list of configurated alerts

<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get a list of configurated alerts
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_operationsalert_get(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_connections_id_connection_accounts_id_account_operationsalert_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete**
> UserAlert users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete(id_user, id_connection, id_account, id_operationsalert, opts)

Delete an alert on transactions or investments

<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_operationsalert = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete an alert on transactions or investments
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete(id_user, id_connection, id_account, id_operationsalert, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_operationsalert** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**UserAlert**](UserAlert.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put**
> UserAlert users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put(id_user, id_connection, id_account, id_operationsalert, opts)

Edit an alert on transactions or investments



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_operationsalert = 56 # Integer | 

opts = { 
  type: 'type_example', # String | parameter to choose the scope of the alert. accepted: transactions, investements
  income_max: 56, # Integer | capital gain thresholds
  expense_max: 56, # Integer | capital loss thresholds
  value_type: 'value_type_example', # String | whether the threshold is given in absolut value or percent. accepted: percent, flat
  date_range: 56, # Integer | (number of days) range on which the analysis has to be done
  expand: 'expand_example' # String | 
}

begin
  #Edit an alert on transactions or investments
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put(id_user, id_connection, id_account, id_operationsalert, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_operationsalert** | **Integer**|  | 
 **type** | **String**| parameter to choose the scope of the alert. accepted: transactions, investements | [optional] 
 **income_max** | **Integer**| capital gain thresholds | [optional] 
 **expense_max** | **Integer**| capital loss thresholds | [optional] 
 **value_type** | **String**| whether the threshold is given in absolut value or percent. accepted: percent, flat | [optional] 
 **date_range** | **Integer**| (number of days) range on which the analysis has to be done | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**UserAlert**](UserAlert.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_operationsalert_post**
> UserAlert users_id_user_connections_id_connection_accounts_id_account_operationsalert_post(id_user, id_connection, id_account, opts)

Create an alert on transactions or investemens of a given user



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  type: 'type_example', # String | parameter to choose the scope of the alert. accepted: transactions, investements
  income_max: 56, # Integer | capital gain thresholds
  expense_max: 56, # Integer | capital loss thresholds
  value_type: 'value_type_example', # String | whether the threshold is given in absolut value or percent. accepted: percent, flat
  date_range: 56, # Integer | (number of days) range on which the analysis has to be done
  expand: 'expand_example' # String | 
}

begin
  #Create an alert on transactions or investemens of a given user
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_operationsalert_post(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_connections_id_connection_accounts_id_account_operationsalert_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **type** | **String**| parameter to choose the scope of the alert. accepted: transactions, investements | [optional] 
 **income_max** | **Integer**| capital gain thresholds | [optional] 
 **expense_max** | **Integer**| capital loss thresholds | [optional] 
 **value_type** | **String**| whether the threshold is given in absolut value or percent. accepted: percent, flat | [optional] 
 **date_range** | **Integer**| (number of days) range on which the analysis has to be done | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**UserAlert**](UserAlert.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_balances_get**
> users_id_user_connections_id_connection_balances_get(id_user, id_connection, opts)

Get balances of accounts

Get balance (income/outcome/balance) of enabled accounts for the given period.<br><br>By default, min_date and max_date are the current month, and period is a single month.<br><br>The period is composed with units (days, months, years) and numbers. You can give for example \"1month\", \"15days\", \"1year6months\", etc.<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximal (inclusive) date
  period: 'period_example' # String | split output with the given period (default: month)
}

begin
  #Get balances of accounts
  api_instance.users_id_user_connections_id_connection_balances_get(id_user, id_connection, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_connections_id_connection_balances_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximal (inclusive) date | [optional] 
 **period** | **String**| split output with the given period (default: month) | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_devices_get**
> InlineResponse20034 users_id_user_devices_get(id_user, opts)

Get devices



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get devices
  result = api_instance.users_id_user_devices_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_devices_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20034**](InlineResponse20034.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_devices_id_device_delete**
> Device users_id_user_devices_id_device_delete(id_user, id_device, opts)

Delete device.



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_device = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete device.
  result = api_instance.users_id_user_devices_id_device_delete(id_user, id_device, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_devices_id_device_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_device** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Device**](Device.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_devices_id_device_get**
> Device users_id_user_devices_id_device_get(id_user, id_device, opts)

Get a device



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_device = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get a device
  result = api_instance.users_id_user_devices_id_device_get(id_user, id_device, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_devices_id_device_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_device** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Device**](Device.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_devices_id_device_put**
> Device users_id_user_devices_id_device_put(id_user, id_device, notification_token, application, opts)

Update attributes of the device.



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_device = 56 # Integer | 

notification_token = 'notification_token_example' # String | the GCM or APNS notification_token to use

application = 'application_example' # String | the device in use

opts = { 
  notification_version: 56, # Integer | version of notifications
  expand: 'expand_example' # String | 
}

begin
  #Update attributes of the device.
  result = api_instance.users_id_user_devices_id_device_put(id_user, id_device, notification_token, application, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_devices_id_device_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_device** | **Integer**|  | 
 **notification_token** | **String**| the GCM or APNS notification_token to use | 
 **application** | **String**| the device in use | 
 **notification_version** | **Integer**| version of notifications | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Device**](Device.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_devices_post**
> Device users_id_user_devices_post(id_user, notification_token, application, opts)

Create a device linked to specified token.



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

notification_token = 'notification_token_example' # String | the GCM or APNS notification_token to use

application = 'application_example' # String | the device in use

opts = { 
  notification_version: 56, # Integer | version of notifications
  expand: 'expand_example' # String | 
}

begin
  #Create a device linked to specified token.
  result = api_instance.users_id_user_devices_post(id_user, notification_token, application, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_devices_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **notification_token** | **String**| the GCM or APNS notification_token to use | 
 **application** | **String**| the device in use | 
 **notification_version** | **Integer**| version of notifications | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Device**](Device.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_forecast_get**
> users_id_user_forecast_get(id_user)

Get forecast



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'


begin
  #Get forecast
  api_instance.users_id_user_forecast_get(id_user)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_forecast_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_get**
> User users_id_user_get(id_user, opts)

Get a user



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get a user
  result = api_instance.users_id_user_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**User**](User.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_operationsalert_get**
> InlineResponse20025 users_id_user_operationsalert_get(id_user, opts)

Get a list of configurated alerts

<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get a list of configurated alerts
  result = api_instance.users_id_user_operationsalert_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_operationsalert_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_operationsalert_id_operationsalert_delete**
> UserAlert users_id_user_operationsalert_id_operationsalert_delete(id_user, id_operationsalert, opts)

Delete an alert on transactions or investemens

<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_operationsalert = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete an alert on transactions or investemens
  result = api_instance.users_id_user_operationsalert_id_operationsalert_delete(id_user, id_operationsalert, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_operationsalert_id_operationsalert_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_operationsalert** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**UserAlert**](UserAlert.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_operationsalert_id_operationsalert_put**
> UserAlert users_id_user_operationsalert_id_operationsalert_put(id_user, id_operationsalert, opts)

Edit an alert on transactions or investemens



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_operationsalert = 56 # Integer | 

opts = { 
  type: 'type_example', # String | parameter to choose the scope of the alert. accepted: transactions, investements
  income_max: 56, # Integer | capital gain thresholds
  expense_max: 56, # Integer | capital loss thresholds
  value_type: 'value_type_example', # String | whether the threshold is given in absolut value or percent. accepted: percent, flat
  date_range: 56, # Integer | (number of days) range on which the analysis has to be done
  expand: 'expand_example' # String | 
}

begin
  #Edit an alert on transactions or investemens
  result = api_instance.users_id_user_operationsalert_id_operationsalert_put(id_user, id_operationsalert, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_operationsalert_id_operationsalert_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_operationsalert** | **Integer**|  | 
 **type** | **String**| parameter to choose the scope of the alert. accepted: transactions, investements | [optional] 
 **income_max** | **Integer**| capital gain thresholds | [optional] 
 **expense_max** | **Integer**| capital loss thresholds | [optional] 
 **value_type** | **String**| whether the threshold is given in absolut value or percent. accepted: percent, flat | [optional] 
 **date_range** | **Integer**| (number of days) range on which the analysis has to be done | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**UserAlert**](UserAlert.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_operationsalert_post**
> UserAlert users_id_user_operationsalert_post(id_user, opts)

Create an alert on transactions or investemens of a given user



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  type: 'type_example', # String | parameter to choose the scope of the alert. accepted: transactions, investements
  income_max: 56, # Integer | capital gain thresholds
  expense_max: 56, # Integer | capital loss thresholds
  value_type: 'value_type_example', # String | whether the threshold is given in absolut value or percent. accepted: percent, flat
  date_range: 56, # Integer | (number of days) range on which the analysis has to be done
  expand: 'expand_example' # String | 
}

begin
  #Create an alert on transactions or investemens of a given user
  result = api_instance.users_id_user_operationsalert_post(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_operationsalert_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **type** | **String**| parameter to choose the scope of the alert. accepted: transactions, investements | [optional] 
 **income_max** | **Integer**| capital gain thresholds | [optional] 
 **expense_max** | **Integer**| capital loss thresholds | [optional] 
 **value_type** | **String**| whether the threshold is given in absolut value or percent. accepted: percent, flat | [optional] 
 **date_range** | **Integer**| (number of days) range on which the analysis has to be done | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**UserAlert**](UserAlert.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_profiles_get**
> InlineResponse20035 users_id_user_profiles_get(id_user, opts)

Get profiles



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get profiles
  result = api_instance.users_id_user_profiles_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_profiles_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20035**](InlineResponse20035.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_profiles_id_profile_get**
> Profile users_id_user_profiles_id_profile_get(id_user, id_profile, opts)

Get a profile



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_profile = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get a profile
  result = api_instance.users_id_user_profiles_id_profile_get(id_user, id_profile, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_profiles_id_profile_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_profile** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Profile**](Profile.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_profiles_main_get**
> Profile users_id_user_profiles_main_get(id_user, opts)

Get the main profile



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get the main profile
  result = api_instance.users_id_user_profiles_main_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_profiles_main_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**Profile**](Profile.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_profiles_me_get**
> Profile users_id_user_profiles_me_get(id_user, opts)

Get my profile



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get my profile
  result = api_instance.users_id_user_profiles_me_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_profiles_me_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**Profile**](Profile.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_profiles_me_put**
> Profile users_id_user_profiles_me_put(id_user, opts)

Change settings of the profile.



### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  email: 'email_example', # String | change email of profile
  password: 'password_example', # String | change password of profile
  current_password: 'current_password_example', # String | needed when changing the password or the email
  contact: 'contact_example', # String | change contact information of a profile
  conf: 'conf_example', # String | change config of a profile
  state: true, # BOOLEAN | state of the profile
  lang: 'lang_example', # String | change lang of the profile
  expand: 'expand_example' # String | 
}

begin
  #Change settings of the profile.
  result = api_instance.users_id_user_profiles_me_put(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_profiles_me_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **email** | **String**| change email of profile | [optional] 
 **password** | **String**| change password of profile | [optional] 
 **current_password** | **String**| needed when changing the password or the email | [optional] 
 **contact** | **String**| change contact information of a profile | [optional] 
 **conf** | **String**| change config of a profile | [optional] 
 **state** | **BOOLEAN**| state of the profile | [optional] 
 **lang** | **String**| change lang of the profile | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Profile**](Profile.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_resume_get**
> Object users_id_user_resume_get(id_user)

Get synthesis configuration of a specific user

<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'


begin
  #Get synthesis configuration of a specific user
  result = api_instance.users_id_user_resume_get(id_user)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_resume_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_resume_post**
> Object users_id_user_resume_post(id_user, opts)

Update synthesis configuration

<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::PFMApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  resume_enabled: true, # BOOLEAN | whether the synthesis is activated or not
  resume_frequency: 56 # Integer | frequency of the synthesis given in days
}

begin
  #Update synthesis configuration
  result = api_instance.users_id_user_resume_post(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling PFMApi->users_id_user_resume_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **resume_enabled** | **BOOLEAN**| whether the synthesis is activated or not | [optional] 
 **resume_frequency** | **Integer**| frequency of the synthesis given in days | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



