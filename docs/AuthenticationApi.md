# BudgeaClient::AuthenticationApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**auth_init_post**](AuthenticationApi.md#auth_init_post) | **POST** /auth/init | Create a new anonymous user
[**auth_token_access_post**](AuthenticationApi.md#auth_token_access_post) | **POST** /auth/token/access | Transform a temporary code to a access_token
[**auth_token_code_get**](AuthenticationApi.md#auth_token_code_get) | **GET** /auth/token/code | Generate a user temporary token
[**auth_token_delete**](AuthenticationApi.md#auth_token_delete) | **DELETE** /auth/token | Remove user access
[**hash_delete**](AuthenticationApi.md#hash_delete) | **DELETE** /hash | Delete the user&#39;s connections
[**users_id_user_delete**](AuthenticationApi.md#users_id_user_delete) | **DELETE** /users/{id_user} | Delete the user
[**users_id_user_get**](AuthenticationApi.md#users_id_user_get) | **GET** /users/{id_user} | Get a user
[**users_id_user_token_post**](AuthenticationApi.md#users_id_user_token_post) | **POST** /users/{id_user}/token | Create a token


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
  client_id: "client_id_example", # String | ID of the client
  client_secret: "client_secret_example" # String | secret of the client
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

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **auth_token_access_post**
> InlineResponse2005 auth_token_access_post(client_id, client_secret, code, opts)

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

client_id = "client_id_example" # String | ID of the client

client_secret = "client_secret_example" # String | secret of the client

code = "code_example" # String | user's temporary code

opts = { 
  grant_type: "grant_type_example", # String | default is \"authorization_code\"
  redirect_uri: "redirect_uri_example" # String | redirect uri used by user
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

[**InlineResponse2005**](InlineResponse2005.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **auth_token_code_get**
> InlineResponse2006 auth_token_code_get

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

[**InlineResponse2006**](InlineResponse2006.md)

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

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
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

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
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

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

application = "application_example" # String | application name


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

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



