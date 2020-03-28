# BudgeaClient::AdministrationApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clients_get**](AdministrationApi.md#clients_get) | **GET** /clients | List clients
[**clients_id_client_delete**](AdministrationApi.md#clients_id_client_delete) | **DELETE** /clients/{id_client} | Delete a client
[**clients_id_client_get**](AdministrationApi.md#clients_id_client_get) | **GET** /clients/{id_client} | Get information about a client
[**clients_id_client_logo_delete**](AdministrationApi.md#clients_id_client_logo_delete) | **DELETE** /clients/{id_client}/logo | Delete the client logo
[**clients_id_client_logo_post**](AdministrationApi.md#clients_id_client_logo_post) | **POST** /clients/{id_client}/logo | Update the client logo
[**clients_id_client_put**](AdministrationApi.md#clients_id_client_put) | **PUT** /clients/{id_client} | Update a client
[**clients_post**](AdministrationApi.md#clients_post) | **POST** /clients | Create a client
[**config_get**](AdministrationApi.md#config_get) | **GET** /config | Get configuration of the API.
[**config_logs_get**](AdministrationApi.md#config_logs_get) | **GET** /config/logs | Get configuration change history of the API.
[**config_post**](AdministrationApi.md#config_post) | **POST** /config | Set a configuration value on the API.
[**merchants_get**](AdministrationApi.md#merchants_get) | **GET** /merchants | List clients
[**merchants_id_client_logo_delete**](AdministrationApi.md#merchants_id_client_logo_delete) | **DELETE** /merchants/{id_client}/logo | Delete the client logo
[**merchants_id_client_logo_post**](AdministrationApi.md#merchants_id_client_logo_post) | **POST** /merchants/{id_client}/logo | Update the client logo
[**merchants_post**](AdministrationApi.md#merchants_post) | **POST** /merchants | Create a merchant. Needs a user identified in bearer to be used
[**monitoring_get**](AdministrationApi.md#monitoring_get) | **GET** /monitoring | get performances stats on this instance
[**test_sync_post**](AdministrationApi.md#test_sync_post) | **POST** /test/sync | Test synchronization on a random connection.
[**test_webhooks_post**](AdministrationApi.md#test_webhooks_post) | **POST** /test/webhooks | Test synchronization on a random connection.
[**webhooks_auth_delete**](AdministrationApi.md#webhooks_auth_delete) | **DELETE** /webhooks/auth | Deletes all webhook authentication types
[**webhooks_auth_get**](AdministrationApi.md#webhooks_auth_get) | **GET** /webhooks/auth | Get webhooks authentication types
[**webhooks_auth_id_auth_delete**](AdministrationApi.md#webhooks_auth_id_auth_delete) | **DELETE** /webhooks/auth/{id_auth} | Deletes the webhook authentication type
[**webhooks_auth_id_auth_post**](AdministrationApi.md#webhooks_auth_id_auth_post) | **POST** /webhooks/auth/{id_auth} | Updates the webhook authentication type
[**webhooks_auth_id_auth_put**](AdministrationApi.md#webhooks_auth_id_auth_put) | **PUT** /webhooks/auth/{id_auth} | Updates the webhook authentication type
[**webhooks_auth_post**](AdministrationApi.md#webhooks_auth_post) | **POST** /webhooks/auth | Adds a new webhook authentication type
[**webhooks_delete**](AdministrationApi.md#webhooks_delete) | **DELETE** /webhooks | Deletes all webhooks
[**webhooks_get**](AdministrationApi.md#webhooks_get) | **GET** /webhooks | Get webhooks
[**webhooks_id_webhook_add_to_data_delete**](AdministrationApi.md#webhooks_id_webhook_add_to_data_delete) | **DELETE** /webhooks/{id_webhook}/add_to_data | delete all entries
[**webhooks_id_webhook_add_to_data_get**](AdministrationApi.md#webhooks_id_webhook_add_to_data_get) | **GET** /webhooks/{id_webhook}/add_to_data | retrieve the list of the value to add in webhooks when sending the requested webhook
[**webhooks_id_webhook_add_to_data_key_delete**](AdministrationApi.md#webhooks_id_webhook_add_to_data_key_delete) | **DELETE** /webhooks/{id_webhook}/add_to_data/{key} | delete the requested entry
[**webhooks_id_webhook_add_to_data_key_get**](AdministrationApi.md#webhooks_id_webhook_add_to_data_key_get) | **GET** /webhooks/{id_webhook}/add_to_data/{key} | retrieve the value to add in the requested webhook for the requested name
[**webhooks_id_webhook_add_to_data_key_post**](AdministrationApi.md#webhooks_id_webhook_add_to_data_key_post) | **POST** /webhooks/{id_webhook}/add_to_data/{key} | upate the requested field to store in user config when calling the endpoint
[**webhooks_id_webhook_add_to_data_post**](AdministrationApi.md#webhooks_id_webhook_add_to_data_post) | **POST** /webhooks/{id_webhook}/add_to_data | Setup a field to store in user config when calling the endpoint
[**webhooks_id_webhook_delete**](AdministrationApi.md#webhooks_id_webhook_delete) | **DELETE** /webhooks/{id_webhook} | Deletes a webhook
[**webhooks_id_webhook_logs_get**](AdministrationApi.md#webhooks_id_webhook_logs_get) | **GET** /webhooks/{id_webhook}/logs | Get webhooks logs.
[**webhooks_id_webhook_post**](AdministrationApi.md#webhooks_id_webhook_post) | **POST** /webhooks/{id_webhook} | Updates a webhook
[**webhooks_id_webhook_put**](AdministrationApi.md#webhooks_id_webhook_put) | **PUT** /webhooks/{id_webhook} | Updates a webhook
[**webhooks_post**](AdministrationApi.md#webhooks_post) | **POST** /webhooks | Adds a new webhook


# **clients_get**
> InlineResponse20013 clients_get(opts)

List clients



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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #List clients
  result = api_instance.clients_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->clients_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **clients_id_client_delete**
> Client clients_id_client_delete(id_client, opts)

Delete a client



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

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete a client
  result = api_instance.clients_id_client_delete(id_client, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->clients_id_client_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_client** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Client**](Client.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **clients_id_client_get**
> Client clients_id_client_get(id_client, opts)

Get information about a client

If you use the manage_token or a configuration token, you will get also the client secret.<br><br>

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

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get information about a client
  result = api_instance.clients_id_client_get(id_client, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->clients_id_client_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_client** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Client**](Client.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **clients_id_client_logo_delete**
> File clients_id_client_logo_delete(id_client, opts)

Delete the client logo



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

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete the client logo
  result = api_instance.clients_id_client_logo_delete(id_client, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->clients_id_client_logo_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_client** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

**File**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **clients_id_client_logo_post**
> File clients_id_client_logo_post(id_client, opts)

Update the client logo



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

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Update the client logo
  result = api_instance.clients_id_client_logo_post(id_client, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->clients_id_client_logo_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_client** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

**File**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **clients_id_client_put**
> Client clients_id_client_put(id_client, opts)

Update a client



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

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  generate_keys: true, # BOOLEAN | set a rsa key pair for the client, which make it possible to generate a jwt user token using this client. No effect if the client already has a set of keys(default: False)
  name: 'name_example', # String | name of client
  secret: true, # BOOLEAN | reset the secret
  redirect_uris: 'redirect_uris_example', # String | list of allowed redirect uris
  primary_color: 'primary_color_example', # String | hexadecimal code of the client primary color (e.g F45B9A)
  secondary_color: 'secondary_color_example', # String | hexadecimal code of the client secondary color (e.g F45B9A)
  description: 'description_example', # String | text to display as a default description
  description_banks: 'description_banks_example', # String | text to display as a description for banks
  description_providers: 'description_providers_example', # String | text to display as a description for providers
  pro: true, # BOOLEAN | Wether the client should display the company manager page
  config: 'config_example', # String | custom config about the client
  update_config: true, # BOOLEAN | update the custom information about the client instead of replacing the existing one (default: True)
  expand: 'expand_example' # String | 
}

begin
  #Update a client
  result = api_instance.clients_id_client_put(id_client, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->clients_id_client_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_client** | **Integer**|  | 
 **generate_keys** | **BOOLEAN**| set a rsa key pair for the client, which make it possible to generate a jwt user token using this client. No effect if the client already has a set of keys(default: False) | [optional] 
 **name** | **String**| name of client | [optional] 
 **secret** | **BOOLEAN**| reset the secret | [optional] 
 **redirect_uris** | **String**| list of allowed redirect uris | [optional] 
 **primary_color** | **String**| hexadecimal code of the client primary color (e.g F45B9A) | [optional] 
 **secondary_color** | **String**| hexadecimal code of the client secondary color (e.g F45B9A) | [optional] 
 **description** | **String**| text to display as a default description | [optional] 
 **description_banks** | **String**| text to display as a description for banks | [optional] 
 **description_providers** | **String**| text to display as a description for providers | [optional] 
 **pro** | **BOOLEAN**| Wether the client should display the company manager page | [optional] 
 **config** | **String**| custom config about the client | [optional] 
 **update_config** | **BOOLEAN**| update the custom information about the client instead of replacing the existing one (default: True) | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Client**](Client.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **clients_post**
> Client clients_post(opts)

Create a client



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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  generate_keys: true, # BOOLEAN | if True, generate a rsa pair of keys so the client can be used to generate jwt user tokens (default: False)
  name: 'name_example', # String | name of client
  redirect_uris: 'redirect_uris_example', # String | list of allowed redirect uris
  config: 'config_example', # String | custom config about the client
  expand: 'expand_example' # String | 
}

begin
  #Create a client
  result = api_instance.clients_post(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->clients_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **generate_keys** | **BOOLEAN**| if True, generate a rsa pair of keys so the client can be used to generate jwt user tokens (default: False) | [optional] 
 **name** | **String**| name of client | [optional] 
 **redirect_uris** | **String**| list of allowed redirect uris | [optional] 
 **config** | **String**| custom config about the client | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Client**](Client.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **config_get**
> config_get(opts)

Get configuration of the API.

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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  search: 'search_example' # String | limit the results to keys matching the given value
}

begin
  #Get configuration of the API.
  api_instance.config_get(opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->config_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| limit the results to keys matching the given value | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **config_logs_get**
> InlineResponse20014 config_logs_get(opts)

Get configuration change history of the API.

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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  search: 'search_example', # String | limit the results to keys matching the given value
  type: 'type_example', # String | type of change done on the configuration
  min_date: Date.parse('2013-10-20'), # Date | minimal date of the change
  max_date: Date.parse('2013-10-20'), # Date | maximum date of the change
  expand: 'expand_example' # String | 
}

begin
  #Get configuration change history of the API.
  result = api_instance.config_logs_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->config_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| limit the results to keys matching the given value | [optional] 
 **type** | **String**| type of change done on the configuration | [optional] 
 **min_date** | **Date**| minimal date of the change | [optional] 
 **max_date** | **Date**| maximum date of the change | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20014**](InlineResponse20014.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **config_post**
> Object config_post(opts)

Set a configuration value on the API.

Request: { \"connection.disable_new\": \"0\", \"search\": \"connection.disable_new\" }<br><br>

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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  search: 'search_example' # String | limit the results to keys matching the given value
}

begin
  #Set a configuration value on the API.
  result = api_instance.config_post(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->config_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **search** | **String**| limit the results to keys matching the given value | [optional] 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **merchants_get**
> InlineResponse20013 merchants_get(opts)

List clients



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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #List clients
  result = api_instance.merchants_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->merchants_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **merchants_id_client_logo_delete**
> File merchants_id_client_logo_delete(id_client, opts)

Delete the client logo



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

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete the client logo
  result = api_instance.merchants_id_client_logo_delete(id_client, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->merchants_id_client_logo_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_client** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

**File**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **merchants_id_client_logo_post**
> File merchants_id_client_logo_post(id_client, opts)

Update the client logo



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

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Update the client logo
  result = api_instance.merchants_id_client_logo_post(id_client, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->merchants_id_client_logo_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_client** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

**File**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **merchants_post**
> Client merchants_post(name, redirect_uris, iban, opts)

Create a merchant. Needs a user identified in bearer to be used



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

api_instance = BudgeaClient::AdministrationApi.new

name = 'name_example' # String | name of merchant

redirect_uris = 'redirect_uris_example' # String | list of allowed redirect uris

iban = 'iban_example' # String | payments initiated by this merchant will be done to this IBAN

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Create a merchant. Needs a user identified in bearer to be used
  result = api_instance.merchants_post(name, redirect_uris, iban, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->merchants_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of merchant | 
 **redirect_uris** | **String**| list of allowed redirect uris | 
 **iban** | **String**| payments initiated by this merchant will be done to this IBAN | 
 **expand** | **String**|  | [optional] 

### Return type

[**Client**](Client.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **monitoring_get**
> monitoring_get(opts)

get performances stats on this instance



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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  period: 56 # Integer | number on days on which stats on synchronization have to be done per worker (Default: 1)
}

begin
  #get performances stats on this instance
  api_instance.monitoring_get(opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->monitoring_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **period** | **Integer**| number on days on which stats on synchronization have to be done per worker (Default: 1) | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **test_sync_post**
> test_sync_post

Test synchronization on a random connection.

It can be used to test receiving data on your webhooks.<br><br>

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

api_instance = BudgeaClient::AdministrationApi.new

begin
  #Test synchronization on a random connection.
  api_instance.test_sync_post
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->test_sync_post: #{e}"
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



# **test_webhooks_post**
> test_webhooks_post

Test synchronization on a random connection.

It can be used to test receiving data on your webhooks.<br><br>

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

api_instance = BudgeaClient::AdministrationApi.new

begin
  #Test synchronization on a random connection.
  api_instance.test_webhooks_post
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->test_webhooks_post: #{e}"
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



# **webhooks_auth_delete**
> AuthProvider webhooks_auth_delete(opts)

Deletes all webhook authentication types



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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Deletes all webhook authentication types
  result = api_instance.webhooks_auth_delete(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_auth_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**AuthProvider**](AuthProvider.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_auth_get**
> InlineResponse20041 webhooks_auth_get(opts)

Get webhooks authentication types



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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get webhooks authentication types
  result = api_instance.webhooks_auth_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_auth_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20041**](InlineResponse20041.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_auth_id_auth_delete**
> AuthProvider webhooks_auth_id_auth_delete(id_auth, opts)

Deletes the webhook authentication type

Updates the deleted field with the date of the deletion<br><br>

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

api_instance = BudgeaClient::AdministrationApi.new

id_auth = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Deletes the webhook authentication type
  result = api_instance.webhooks_auth_id_auth_delete(id_auth, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_auth_id_auth_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_auth** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**AuthProvider**](AuthProvider.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_auth_id_auth_post**
> AuthProvider webhooks_auth_id_auth_post(id_auth, type, name, opts)

Updates the webhook authentication type



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

api_instance = BudgeaClient::AdministrationApi.new

id_auth = 56 # Integer | 

type = 56 # Integer | The type of the authentication process (oauth, certificate, token, etc...)

name = 'name_example' # String | The name of the authentication process to differentiate

opts = { 
  config: 'config_example', # String | The authentication process configuration. A dict containing either the certificate
  expand: 'expand_example' # String | 
}

begin
  #Updates the webhook authentication type
  result = api_instance.webhooks_auth_id_auth_post(id_auth, type, name, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_auth_id_auth_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_auth** | **Integer**|  | 
 **type** | **Integer**| The type of the authentication process (oauth, certificate, token, etc...) | 
 **name** | **String**| The name of the authentication process to differentiate | 
 **config** | **String**| The authentication process configuration. A dict containing either the certificate | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**AuthProvider**](AuthProvider.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_auth_id_auth_put**
> AuthProvider webhooks_auth_id_auth_put(id_auth, type, name, opts)

Updates the webhook authentication type



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

api_instance = BudgeaClient::AdministrationApi.new

id_auth = 56 # Integer | 

type = 56 # Integer | The type of the authentication process (oauth, certificate, token, etc...)

name = 'name_example' # String | The name of the authentication process to differentiate

opts = { 
  config: 'config_example', # String | The authentication process configuration. A dict containt either the certificate
  expand: 'expand_example' # String | 
}

begin
  #Updates the webhook authentication type
  result = api_instance.webhooks_auth_id_auth_put(id_auth, type, name, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_auth_id_auth_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_auth** | **Integer**|  | 
 **type** | **Integer**| The type of the authentication process (oauth, certificate, token, etc...) | 
 **name** | **String**| The name of the authentication process to differentiate | 
 **config** | **String**| The authentication process configuration. A dict containt either the certificate | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**AuthProvider**](AuthProvider.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_auth_post**
> AuthProvider webhooks_auth_post(type, name, opts)

Adds a new webhook authentication type



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

api_instance = BudgeaClient::AdministrationApi.new

type = 56 # Integer | The type of the authentication process (oauth, certificate, token, etc...)

name = 'name_example' # String | The name of the authentication process to differentiate

opts = { 
  config: 'config_example', # String | The authentication process configuration. A dict contains either the certificate
  expand: 'expand_example' # String | 
}

begin
  #Adds a new webhook authentication type
  result = api_instance.webhooks_auth_post(type, name, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_auth_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **Integer**| The type of the authentication process (oauth, certificate, token, etc...) | 
 **name** | **String**| The name of the authentication process to differentiate | 
 **config** | **String**| The authentication process configuration. A dict contains either the certificate | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**AuthProvider**](AuthProvider.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_delete**
> Webhook webhooks_delete(opts)

Deletes all webhooks

Updates the deleted field with the date of the deletion<br><br>

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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Deletes all webhooks
  result = api_instance.webhooks_delete(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_get**
> InlineResponse20040 webhooks_get(opts)

Get webhooks



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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get webhooks
  result = api_instance.webhooks_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_id_webhook_add_to_data_delete**
> Webhook webhooks_id_webhook_add_to_data_delete(id_webhook, opts)

delete all entries



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

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #delete all entries
  result = api_instance.webhooks_id_webhook_add_to_data_delete(id_webhook, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_id_webhook_add_to_data_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_webhook** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_id_webhook_add_to_data_get**
> InlineResponse20040 webhooks_id_webhook_add_to_data_get(id_webhook, opts)

retrieve the list of the value to add in webhooks when sending the requested webhook



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

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #retrieve the list of the value to add in webhooks when sending the requested webhook
  result = api_instance.webhooks_id_webhook_add_to_data_get(id_webhook, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_id_webhook_add_to_data_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_webhook** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20040**](InlineResponse20040.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_id_webhook_add_to_data_key_delete**
> Webhook webhooks_id_webhook_add_to_data_key_delete(id_webhook, key, opts)

delete the requested entry



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

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

key = 'key_example' # String | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #delete the requested entry
  result = api_instance.webhooks_id_webhook_add_to_data_key_delete(id_webhook, key, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_id_webhook_add_to_data_key_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_webhook** | **Integer**|  | 
 **key** | **String**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_id_webhook_add_to_data_key_get**
> Webhook webhooks_id_webhook_add_to_data_key_get(id_webhook, key, opts)

retrieve the value to add in the requested webhook for the requested name



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

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

key = 'key_example' # String | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #retrieve the value to add in the requested webhook for the requested name
  result = api_instance.webhooks_id_webhook_add_to_data_key_get(id_webhook, key, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_id_webhook_add_to_data_key_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_webhook** | **Integer**|  | 
 **key** | **String**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_id_webhook_add_to_data_key_post**
> Webhook webhooks_id_webhook_add_to_data_key_post(id_webhook, key, opts)

upate the requested field to store in user config when calling the endpoint

For each parameter, a value will be added in the webhook data. Use the key to set the name of the field. The values that can be added are to be found in the user configuration.<br><br>

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

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

key = 'key_example' # String | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #upate the requested field to store in user config when calling the endpoint
  result = api_instance.webhooks_id_webhook_add_to_data_key_post(id_webhook, key, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_id_webhook_add_to_data_key_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_webhook** | **Integer**|  | 
 **key** | **String**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_id_webhook_add_to_data_post**
> Webhook webhooks_id_webhook_add_to_data_post(id_webhook, opts)

Setup a field to store in user config when calling the endpoint

For each parameter, a value will be added in the webhook data. Use the key to set the name of the field. The values that can be added are to be found in the user configuration.<br><br>

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

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Setup a field to store in user config when calling the endpoint
  result = api_instance.webhooks_id_webhook_add_to_data_post(id_webhook, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_id_webhook_add_to_data_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_webhook** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_id_webhook_delete**
> Webhook webhooks_id_webhook_delete(id_webhook, opts)

Deletes a webhook

Updates the deleted field with the date of the deletion<br><br>

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

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Deletes a webhook
  result = api_instance.webhooks_id_webhook_delete(id_webhook, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_id_webhook_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_webhook** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_id_webhook_logs_get**
> InlineResponse20042 webhooks_id_webhook_logs_get(id_webhook, opts)

Get webhooks logs.

Get logs of the webhooks.<br><br>By default, it selects logs for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>

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

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

opts = { 
  id_user: 56, # Integer | limit number of results to this user
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  expand: 'expand_example' # String | 
}

begin
  #Get webhooks logs.
  result = api_instance.webhooks_id_webhook_logs_get(id_webhook, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_id_webhook_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_webhook** | **Integer**|  | 
 **id_user** | **Integer**| limit number of results to this user | [optional] 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20042**](InlineResponse20042.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_id_webhook_post**
> Webhook webhooks_id_webhook_post(id_webhook, opts)

Updates a webhook



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

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

opts = { 
  deleted: 'deleted_example', # String | a date to delete the webhook or 'null' to enable it
  id_user: 56, # Integer | The user ID to associate with the webhook
  id_service: 56, # Integer | The service ID to associate with the webhook
  id_auth: 56, # Integer | The webhook authentication process to use
  url: 'url_example', # String | The webhook callback url
  event: 'event_example', # String | The webhook event
  expand: 'expand_example' # String | 
}

begin
  #Updates a webhook
  result = api_instance.webhooks_id_webhook_post(id_webhook, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_id_webhook_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_webhook** | **Integer**|  | 
 **deleted** | **String**| a date to delete the webhook or &#39;null&#39; to enable it | [optional] 
 **id_user** | **Integer**| The user ID to associate with the webhook | [optional] 
 **id_service** | **Integer**| The service ID to associate with the webhook | [optional] 
 **id_auth** | **Integer**| The webhook authentication process to use | [optional] 
 **url** | **String**| The webhook callback url | [optional] 
 **event** | **String**| The webhook event | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_id_webhook_put**
> Webhook webhooks_id_webhook_put(id_webhook, opts)

Updates a webhook



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

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

opts = { 
  deleted: 'deleted_example', # String | a date to delete the webhook or 'null' to enable it
  id_user: 56, # Integer | The user ID to associate with the webhook
  id_service: 56, # Integer | The service ID to associate with the webhook
  id_auth: 56, # Integer | The webhook authentication process to use
  url: 'url_example', # String | The webhook callback url
  event: 'event_example', # String | The webhook event
  expand: 'expand_example' # String | 
}

begin
  #Updates a webhook
  result = api_instance.webhooks_id_webhook_put(id_webhook, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_id_webhook_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_webhook** | **Integer**|  | 
 **deleted** | **String**| a date to delete the webhook or &#39;null&#39; to enable it | [optional] 
 **id_user** | **Integer**| The user ID to associate with the webhook | [optional] 
 **id_service** | **Integer**| The service ID to associate with the webhook | [optional] 
 **id_auth** | **Integer**| The webhook authentication process to use | [optional] 
 **url** | **String**| The webhook callback url | [optional] 
 **event** | **String**| The webhook event | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **webhooks_post**
> Webhook webhooks_post(opts)

Adds a new webhook



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

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  id_user: 56, # Integer | The user ID to associate with the webhook
  id_service: 56, # Integer | The service ID to associate with the webhook
  id_auth: 'id_auth_example', # String | The webhook authentication process to use (its ID or its name)
  url: 'url_example', # String | The webhook callback url
  event: 'event_example', # String | The webhook event
  params: 'params_example', # String | The webhook parameters as an object with three keys: type, key and value
  expand: 'expand_example' # String | 
}

begin
  #Adds a new webhook
  result = api_instance.webhooks_post(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling AdministrationApi->webhooks_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **Integer**| The user ID to associate with the webhook | [optional] 
 **id_service** | **Integer**| The service ID to associate with the webhook | [optional] 
 **id_auth** | **String**| The webhook authentication process to use (its ID or its name) | [optional] 
 **url** | **String**| The webhook callback url | [optional] 
 **event** | **String**| The webhook event | [optional] 
 **params** | **String**| The webhook parameters as an object with three keys: type, key and value | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



