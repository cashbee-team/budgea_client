# BudgeaClient::UsersManagementApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**hash_delete**](UsersManagementApi.md#hash_delete) | **DELETE** /hash | Delete the user&#39;s connections
[**users_get**](UsersManagementApi.md#users_get) | **GET** /users | Get users
[**users_id_user_config_delete**](UsersManagementApi.md#users_id_user_config_delete) | **DELETE** /users/{id_user}/config | Delete the given user configurations. deletions on keys prefixed by &#39;biapi.&#39; (except callback_url) are ignored
[**users_id_user_config_get**](UsersManagementApi.md#users_id_user_config_get) | **GET** /users/{id_user}/config | Get configuration of a user.
[**users_id_user_config_post**](UsersManagementApi.md#users_id_user_config_post) | **POST** /users/{id_user}/config | Change configuration of a user. modifications on keys prefixed by &#39;biapi.&#39; (except callback_url) are ignored
[**users_id_user_delete**](UsersManagementApi.md#users_id_user_delete) | **DELETE** /users/{id_user} | Delete the user
[**users_id_user_get**](UsersManagementApi.md#users_id_user_get) | **GET** /users/{id_user} | Get a user
[**users_id_user_profiles_get**](UsersManagementApi.md#users_id_user_profiles_get) | **GET** /users/{id_user}/profiles | Get profiles
[**users_id_user_profiles_id_profile_get**](UsersManagementApi.md#users_id_user_profiles_id_profile_get) | **GET** /users/{id_user}/profiles/{id_profile} | Get a profile
[**users_id_user_profiles_main_get**](UsersManagementApi.md#users_id_user_profiles_main_get) | **GET** /users/{id_user}/profiles/main | Get the main profile
[**users_id_user_profiles_me_get**](UsersManagementApi.md#users_id_user_profiles_me_get) | **GET** /users/{id_user}/profiles/me | Get my profile
[**users_id_user_token_post**](UsersManagementApi.md#users_id_user_token_post) | **POST** /users/{id_user}/token | Create a token


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

api_instance = BudgeaClient::UsersManagementApi.new

begin
  #Delete the user's connections
  api_instance.hash_delete
rescue BudgeaClient::ApiError => e
  puts "Exception when calling UsersManagementApi->hash_delete: #{e}"
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



# **users_get**
> InlineResponse20022 users_get(opts)

Get users



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

api_instance = BudgeaClient::UsersManagementApi.new

opts = { 
  search: 'search_example', # String | searches a user by mail (if it contains no '@', '@biapi.pro' will be added at the end)
  expand: 'expand_example' # String | 
}

begin
  #Get users
  result = api_instance.users_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling UsersManagementApi->users_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| searches a user by mail (if it contains no &#39;@&#39;, &#39;@biapi.pro&#39; will be added at the end) | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20022**](InlineResponse20022.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_config_delete**
> users_id_user_config_delete(id_user)

Delete the given user configurations. deletions on keys prefixed by 'biapi.' (except callback_url) are ignored

- keys (string): list of coma separated keys to be deleted.<br><br>

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

api_instance = BudgeaClient::UsersManagementApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'


begin
  #Delete the given user configurations. deletions on keys prefixed by 'biapi.' (except callback_url) are ignored
  api_instance.users_id_user_config_delete(id_user)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling UsersManagementApi->users_id_user_config_delete: #{e}"
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



# **users_id_user_config_get**
> Object users_id_user_config_get(id_user)

Get configuration of a user.

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

api_instance = BudgeaClient::UsersManagementApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'


begin
  #Get configuration of a user.
  result = api_instance.users_id_user_config_get(id_user)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling UsersManagementApi->users_id_user_config_get: #{e}"
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



# **users_id_user_config_post**
> users_id_user_config_post(id_user)

Change configuration of a user. modifications on keys prefixed by 'biapi.' (except callback_url) are ignored



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

api_instance = BudgeaClient::UsersManagementApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'


begin
  #Change configuration of a user. modifications on keys prefixed by 'biapi.' (except callback_url) are ignored
  api_instance.users_id_user_config_post(id_user)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling UsersManagementApi->users_id_user_config_post: #{e}"
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

api_instance = BudgeaClient::UsersManagementApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete the user
  result = api_instance.users_id_user_delete(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling UsersManagementApi->users_id_user_delete: #{e}"
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

api_instance = BudgeaClient::UsersManagementApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get a user
  result = api_instance.users_id_user_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling UsersManagementApi->users_id_user_get: #{e}"
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



# **users_id_user_profiles_get**
> InlineResponse20039 users_id_user_profiles_get(id_user, opts)

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

api_instance = BudgeaClient::UsersManagementApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get profiles
  result = api_instance.users_id_user_profiles_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling UsersManagementApi->users_id_user_profiles_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20039**](InlineResponse20039.md)

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

api_instance = BudgeaClient::UsersManagementApi.new

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
  puts "Exception when calling UsersManagementApi->users_id_user_profiles_id_profile_get: #{e}"
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

api_instance = BudgeaClient::UsersManagementApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get the main profile
  result = api_instance.users_id_user_profiles_main_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling UsersManagementApi->users_id_user_profiles_main_get: #{e}"
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

api_instance = BudgeaClient::UsersManagementApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get my profile
  result = api_instance.users_id_user_profiles_me_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling UsersManagementApi->users_id_user_profiles_me_get: #{e}"
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

api_instance = BudgeaClient::UsersManagementApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

application = 'application_example' # String | application name


begin
  #Create a token
  result = api_instance.users_id_user_token_post(id_user, application)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling UsersManagementApi->users_id_user_token_post: #{e}"
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

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



