# BudgeaClient::AuthenticationApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**admin_jwt_post**](AuthenticationApi.md#admin_jwt_post) | **POST** /admin/jwt | Generate a jwt manage token
[**auth_init_post**](AuthenticationApi.md#auth_init_post) | **POST** /auth/init | Create a new anonymous user
[**auth_jwt_post**](AuthenticationApi.md#auth_jwt_post) | **POST** /auth/jwt | Generate a user jwt token
[**auth_token_access_post**](AuthenticationApi.md#auth_token_access_post) | **POST** /auth/token/access | Transform a temporary code to a access_token
[**auth_token_code_get**](AuthenticationApi.md#auth_token_code_get) | **GET** /auth/token/code | Generate a user temporary token
[**auth_token_delete**](AuthenticationApi.md#auth_token_delete) | **DELETE** /auth/token | Remove user access
[**certificate_type_get**](AuthenticationApi.md#certificate_type_get) | **GET** /certificate/{type} | Get the latest certificate of a type
[**hash_delete**](AuthenticationApi.md#hash_delete) | **DELETE** /hash | Delete the user&#39;s connections
[**users_id_user_delete**](AuthenticationApi.md#users_id_user_delete) | **DELETE** /users/{id_user} | Delete the user
[**users_id_user_get**](AuthenticationApi.md#users_id_user_get) | **GET** /users/{id_user} | Get a user
[**users_id_user_token_post**](AuthenticationApi.md#users_id_user_token_post) | **POST** /users/{id_user}/token | Create a token
[**webauth_get**](AuthenticationApi.md#webauth_get) | **GET** /webauth | First step to establish an oAuth2 connection.


# **admin_jwt_post**
> Object admin_jwt_post(opts)

Generate a jwt manage token

This endpoint generates a new jwt manage token. It requires an admin manage token to be used<br><br>

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

api_instance = BudgeaClient::AuthenticationApi.new

opts = { 
  scope: 'scope_example', # String | scope requested for the token (default: config)
  duration: 56 # Integer | number of minute before the token expiration (0 for token that won't expire unless the client application is deleted) (default: 1)
}

begin
  #Generate a jwt manage token
  result = api_instance.admin_jwt_post(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->admin_jwt_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scope** | **String**| scope requested for the token (default: config) | [optional] 
 **duration** | **Integer**| number of minute before the token expiration (0 for token that won&#39;t expire unless the client application is deleted) (default: 1) | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **auth_init_post**
> InlineResponse2002 auth_init_post(opts)

Create a new anonymous user

This endpoint creates a new temporary token related to a new anonymous user.<br><br>It will expire 30 minutes after.<br><br>Note: if you supply client_id and client_secret, or if you call this endpoint with the manage_token, the token will be permanent.<br><br>

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

api_instance = BudgeaClient::AuthenticationApi.new

opts = { 
  client_id: 'client_id_example', # String | ID of the client
  client_secret: 'client_secret_example' # String | secret of the client
}

begin
  #Create a new anonymous user
  result = api_instance.auth_init_post(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->auth_init_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| ID of the client | [optional] 
 **client_secret** | **String**| secret of the client | [optional] 

### Return type

[**InlineResponse2002**](InlineResponse2002.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **auth_jwt_post**
> InlineResponse2003 auth_jwt_post(opts)

Generate a user jwt token

This endpoint generates a new jwt token for the user. This token will last the time in minutes given by the config key auth.default_token_expire (permanent if this the parameter expire=False is given)<br><br>

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

api_instance = BudgeaClient::AuthenticationApi.new

opts = { 
  client_id: 'client_id_example', # String | id of the client
  client_secret: 'client_secret_example', # String | secret for the client
  scope: 'scope_example', # String | scope requested for the token
  id_user: 56, # Integer | user for whom the token has to be generated. If not supplied, a user will be created
  expire: true # BOOLEAN | if set to True, the token will expire n minutes after its creation, n being the value of configuration key auth.default_token_expire (default: True)
}

begin
  #Generate a user jwt token
  result = api_instance.auth_jwt_post(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->auth_jwt_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| id of the client | [optional] 
 **client_secret** | **String**| secret for the client | [optional] 
 **scope** | **String**| scope requested for the token | [optional] 
 **id_user** | **Integer**| user for whom the token has to be generated. If not supplied, a user will be created | [optional] 
 **expire** | **BOOLEAN**| if set to True, the token will expire n minutes after its creation, n being the value of configuration key auth.default_token_expire (default: True) | [optional] 

### Return type

[**InlineResponse2003**](InlineResponse2003.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **auth_token_access_post**
> InlineResponse2006 auth_token_access_post(client_id, client_secret, code, opts)

Transform a temporary code to a access_token

In order to register a new user with the OAuth 2 process, the client has to call this endpoint to request a granted access_token with the received temporary code.<br><br>

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

api_instance = BudgeaClient::AuthenticationApi.new

client_id = 'client_id_example' # String | ID of the client

client_secret = 'client_secret_example' # String | secret of the client

code = 'code_example' # String | user's temporary code

opts = { 
  grant_type: 'grant_type_example', # String | default is \"authorization_code\"
  redirect_uri: 'redirect_uri_example' # String | redirect uri used by user
}

begin
  #Transform a temporary code to a access_token
  result = api_instance.auth_token_access_post(client_id, client_secret, code, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->auth_token_access_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_id** | **String**| ID of the client | 
 **client_secret** | **String**| secret of the client | 
 **code** | **String**| user&#39;s temporary code | 
 **grant_type** | **String**| default is \&quot;authorization_code\&quot; | [optional] 
 **redirect_uri** | **String**| redirect uri used by user | [optional] 

### Return type

[**InlineResponse2006**](InlineResponse2006.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **auth_token_code_get**
> InlineResponse2007 auth_token_code_get

Generate a user temporary token

This endpoint generates a new temporary token for the user.<br><br>In case the access_token is used by a trusted device, and you want to let another one (for example a web browser) access to user resources, use this service to create a token which will expire in 30 minutes.<br><br>

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

api_instance = BudgeaClient::AuthenticationApi.new

begin
  #Generate a user temporary token
  result = api_instance.auth_token_code_get
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->auth_token_code_get: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
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

api_instance = BudgeaClient::AuthenticationApi.new

begin
  #Remove user access
  api_instance.auth_token_delete
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->auth_token_delete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **certificate_type_get**
> Certificate certificate_type_get(type, opts)

Get the latest certificate of a type



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

api_instance = BudgeaClient::AuthenticationApi.new

type = 'type_example' # String | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get the latest certificate of a type
  result = api_instance.certificate_type_get(type, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->certificate_type_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **String**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Certificate**](Certificate.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
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

api_instance = BudgeaClient::AuthenticationApi.new

begin
  #Delete the user's connections
  api_instance.hash_delete
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->hash_delete: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_delete**
> User users_id_user_delete(id_user, opts)

Delete the user

This endpoint deletes the user.<br><br>

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

api_instance = BudgeaClient::AuthenticationApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete the user
  result = api_instance.users_id_user_delete(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->users_id_user_delete: #{e}"
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

 - **Content-Type**: application/json, multipart/form-data
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

api_instance = BudgeaClient::AuthenticationApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get a user
  result = api_instance.users_id_user_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->users_id_user_get: #{e}"
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

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_token_post**
> Object users_id_user_token_post(id_user, application)

Create a token

Create an access_token for this user and get it.<br><br>

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

api_instance = BudgeaClient::AuthenticationApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

application = 'application_example' # String | application name


begin
  #Create a token
  result = api_instance.users_id_user_token_post(id_user, application)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->users_id_user_token_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **application** | **String**| application name | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **webauth_get**
> webauth_get(opts)

First step to establish an oAuth2 connection.

The route encapsulate 2 functionalities: 1. Create or update a connection through oAuth2 session.<br><br>2. Execute a transfer through OAuth2 session.

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

api_instance = BudgeaClient::AuthenticationApi.new

opts = { 
  id_connector: 56, # Integer | ID of the connector
  id_transfer: 56, # Integer | ID of the transfer
  connector_uuid: 'connector_uuid_example', # String | Optional unique ID of the connector (replaces id_connector)
  client_id: 56, # Integer | Client Application ID
  redirect_uri: 'redirect_uri_example', # String | Redirect URI
  state: 'state_example', # String | Optional state
  fields: 'fields_example', # String | Optional fields
  id_connection: 56 # Integer | Optional already existing connection to update
}

begin
  #First step to establish an oAuth2 connection.
  api_instance.webauth_get(opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AuthenticationApi->webauth_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**| ID of the connector | [optional] 
 **id_transfer** | **Integer**| ID of the transfer | [optional] 
 **connector_uuid** | **String**| Optional unique ID of the connector (replaces id_connector) | [optional] 
 **client_id** | **Integer**| Client Application ID | [optional] 
 **redirect_uri** | **String**| Redirect URI | [optional] 
 **state** | **String**| Optional state | [optional] 
 **fields** | **String**| Optional fields | [optional] 
 **id_connection** | **Integer**| Optional already existing connection to update | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



