# BudgeaClient::ConnectionsApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**banks_get**](ConnectionsApi.md#banks_get) | **GET** /banks | Get list of connectors
[**banks_id_connector_connections_get**](ConnectionsApi.md#banks_id_connector_connections_get) | **GET** /banks/{id_connector}/connections | Get a subset of id_connection with the largest diversity of account
[**banks_id_connector_sources_get**](ConnectionsApi.md#banks_id_connector_sources_get) | **GET** /banks/{id_connector}/sources | Get list of connector sources
[**connections_get**](ConnectionsApi.md#connections_get) | **GET** /connections | Get connections without a user
[**connections_id_connection_logs_get**](ConnectionsApi.md#connections_id_connection_logs_get) | **GET** /connections/{id_connection}/logs | Get connection logs
[**connections_id_connection_sources_get**](ConnectionsApi.md#connections_id_connection_sources_get) | **GET** /connections/{id_connection}/sources | Get connection sources
[**connections_id_connection_sources_id_source_delete**](ConnectionsApi.md#connections_id_connection_sources_id_source_delete) | **DELETE** /connections/{id_connection}/sources/{id_source} | Disable a connection source
[**connections_id_connection_sources_id_source_post**](ConnectionsApi.md#connections_id_connection_sources_id_source_post) | **POST** /connections/{id_connection}/sources/{id_source} | Enable connection source
[**connections_id_connection_sources_id_source_put**](ConnectionsApi.md#connections_id_connection_sources_id_source_put) | **PUT** /connections/{id_connection}/sources/{id_source} | Enable connection source
[**connectors_get**](ConnectionsApi.md#connectors_get) | **GET** /connectors | Get list of connectors
[**connectors_id_connector_sources_get**](ConnectionsApi.md#connectors_id_connector_sources_get) | **GET** /connectors/{id_connector}/sources | Get list of connector sources
[**connectors_id_connector_sources_id_source_put**](ConnectionsApi.md#connectors_id_connector_sources_id_source_put) | **PUT** /connectors/{id_connector}/sources/{id_source} | Edit the provided connector source
[**connectors_post**](ConnectionsApi.md#connectors_post) | **POST** /connectors | Request a new connector
[**logs_get**](ConnectionsApi.md#logs_get) | **GET** /logs | Get connection logs
[**providers_get**](ConnectionsApi.md#providers_get) | **GET** /providers | Get list of connectors
[**providers_id_connector_connections_get**](ConnectionsApi.md#providers_id_connector_connections_get) | **GET** /providers/{id_connector}/connections | Get a random subset of provider&#39;s id_connection
[**providers_id_connector_sources_get**](ConnectionsApi.md#providers_id_connector_sources_get) | **GET** /providers/{id_connector}/sources | Get list of connector sources
[**users_id_user_connections_delete**](ConnectionsApi.md#users_id_user_connections_delete) | **DELETE** /users/{id_user}/connections | Delete all connections
[**users_id_user_connections_get**](ConnectionsApi.md#users_id_user_connections_get) | **GET** /users/{id_user}/connections | Get connections
[**users_id_user_connections_id_connection_delete**](ConnectionsApi.md#users_id_user_connections_id_connection_delete) | **DELETE** /users/{id_user}/connections/{id_connection} | Delete a connection.
[**users_id_user_connections_id_connection_get**](ConnectionsApi.md#users_id_user_connections_id_connection_get) | **GET** /users/{id_user}/connections/{id_connection} | Get connection
[**users_id_user_connections_id_connection_informations_get**](ConnectionsApi.md#users_id_user_connections_id_connection_informations_get) | **GET** /users/{id_user}/connections/{id_connection}/informations | Get connection additionnal informations
[**users_id_user_connections_id_connection_logs_get**](ConnectionsApi.md#users_id_user_connections_id_connection_logs_get) | **GET** /users/{id_user}/connections/{id_connection}/logs | Get connection logs
[**users_id_user_connections_id_connection_post**](ConnectionsApi.md#users_id_user_connections_id_connection_post) | **POST** /users/{id_user}/connections/{id_connection} | Update a connection.
[**users_id_user_connections_id_connection_put**](ConnectionsApi.md#users_id_user_connections_id_connection_put) | **PUT** /users/{id_user}/connections/{id_connection} | Force synchronisation of a connection.
[**users_id_user_connections_id_connection_sources_get**](ConnectionsApi.md#users_id_user_connections_id_connection_sources_get) | **GET** /users/{id_user}/connections/{id_connection}/sources | Get connection sources
[**users_id_user_connections_id_connection_sources_id_source_delete**](ConnectionsApi.md#users_id_user_connections_id_connection_sources_id_source_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/sources/{id_source} | Disable a connection source
[**users_id_user_connections_id_connection_sources_id_source_post**](ConnectionsApi.md#users_id_user_connections_id_connection_sources_id_source_post) | **POST** /users/{id_user}/connections/{id_connection}/sources/{id_source} | Enable connection source
[**users_id_user_connections_id_connection_sources_id_source_put**](ConnectionsApi.md#users_id_user_connections_id_connection_sources_id_source_put) | **PUT** /users/{id_user}/connections/{id_connection}/sources/{id_source} | Enable connection source
[**users_id_user_connections_post**](ConnectionsApi.md#users_id_user_connections_post) | **POST** /users/{id_user}/connections | Add a new connection.
[**users_id_user_logs_get**](ConnectionsApi.md#users_id_user_logs_get) | **GET** /users/{id_user}/logs | Get connection logs


# **banks_get**
> InlineResponse2008 banks_get(opts)

Get list of connectors



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

api_instance = BudgeaClient::ConnectionsApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get list of connectors
  result = api_instance.banks_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->banks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **banks_id_connector_connections_get**
> InlineResponse2009 banks_id_connector_connections_get(id_connector, opts)

Get a subset of id_connection with the largest diversity of account

By default, it selects a set of 3 connections.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_connector = 56 # Integer | 

opts = { 
  range: 56, # Integer | the length of the connection subset
  type: 56, # Integer | to target a specific account type which will be
  occurrences: 56, # Integer | require at least N accounts of the targeted
  expand: 'expand_example' # String | 
}

begin
  #Get a subset of id_connection with the largest diversity of account
  result = api_instance.banks_id_connector_connections_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->banks_id_connector_connections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **range** | **Integer**| the length of the connection subset | [optional] 
 **type** | **Integer**| to target a specific account type which will be | [optional] 
 **occurrences** | **Integer**| require at least N accounts of the targeted | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **banks_id_connector_sources_get**
> InlineResponse20011 banks_id_connector_sources_get(id_connector, opts)

Get list of connector sources



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

api_instance = BudgeaClient::ConnectionsApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get list of connector sources
  result = api_instance.banks_id_connector_sources_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->banks_id_connector_sources_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **connections_get**
> InlineResponse2009 connections_get(opts)

Get connections without a user



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

api_instance = BudgeaClient::ConnectionsApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get connections without a user
  result = api_instance.connections_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->connections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **connections_id_connection_logs_get**
> InlineResponse20015 connections_id_connection_logs_get(id_connection, opts)

Get connection logs

Get logs about connections.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_connection = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  state: 56, # Integer | state of user
  period: 'period_example', # String | period to group logs
  id_user: 56, # Integer | ID of a user
  id_connection2: 56, # Integer | ID of a connection
  id_connector: 56, # Integer | ID of a connector
  charged: true, # BOOLEAN | consider only logs for charged connectors
  id_source: 56, # Integer | ID of a source
  expand: 'expand_example' # String | 
}

begin
  #Get connection logs
  result = api_instance.connections_id_connection_logs_get(id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->connections_id_connection_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connection** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **state** | **Integer**| state of user | [optional] 
 **period** | **String**| period to group logs | [optional] 
 **id_user** | **Integer**| ID of a user | [optional] 
 **id_connection2** | **Integer**| ID of a connection | [optional] 
 **id_connector** | **Integer**| ID of a connector | [optional] 
 **charged** | **BOOLEAN**| consider only logs for charged connectors | [optional] 
 **id_source** | **Integer**| ID of a source | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **connections_id_connection_sources_get**
> InlineResponse20016 connections_id_connection_sources_get(id_connection, opts)

Get connection sources



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

api_instance = BudgeaClient::ConnectionsApi.new

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get connection sources
  result = api_instance.connections_id_connection_sources_get(id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->connections_id_connection_sources_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **connections_id_connection_sources_id_source_delete**
> ConnectionSource connections_id_connection_sources_id_source_delete(id_connection, id_source, opts)

Disable a connection source

This will make it so the specified source will not be synchronized anymore.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_connection = 56 # Integer | 

id_source = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Disable a connection source
  result = api_instance.connections_id_connection_sources_id_source_delete(id_connection, id_source, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->connections_id_connection_sources_id_source_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connection** | **Integer**|  | 
 **id_source** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectionSource**](ConnectionSource.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **connections_id_connection_sources_id_source_post**
> ConnectionSource connections_id_connection_sources_id_source_post(id_connection, id_source, opts)

Enable connection source

This will make it so the specified source will be able to be synchronized.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_connection = 56 # Integer | 

id_source = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Enable connection source
  result = api_instance.connections_id_connection_sources_id_source_post(id_connection, id_source, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->connections_id_connection_sources_id_source_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connection** | **Integer**|  | 
 **id_source** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectionSource**](ConnectionSource.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **connections_id_connection_sources_id_source_put**
> ConnectionSource connections_id_connection_sources_id_source_put(id_connection, id_source, opts)

Enable connection source

This will make it so the specified source will be able to be synchronized.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_connection = 56 # Integer | 

id_source = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Enable connection source
  result = api_instance.connections_id_connection_sources_id_source_put(id_connection, id_source, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->connections_id_connection_sources_id_source_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connection** | **Integer**|  | 
 **id_source** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectionSource**](ConnectionSource.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **connectors_get**
> InlineResponse20017 connectors_get(opts)

Get list of connectors



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

api_instance = BudgeaClient::ConnectionsApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get list of connectors
  result = api_instance.connectors_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->connectors_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20017**](InlineResponse20017.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **connectors_id_connector_sources_get**
> InlineResponse20011 connectors_id_connector_sources_get(id_connector, opts)

Get list of connector sources



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

api_instance = BudgeaClient::ConnectionsApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get list of connector sources
  result = api_instance.connectors_id_connector_sources_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->connectors_id_connector_sources_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **connectors_id_connector_sources_id_source_put**
> ConnectorSource connectors_id_connector_sources_id_source_put(id_connector, id_source, opts)

Edit the provided connector source



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

api_instance = BudgeaClient::ConnectionsApi.new

id_connector = 56 # Integer | 

id_source = 56 # Integer | 

opts = { 
  auth_mechanism: 'auth_mechanism_example', # String | the authentication mechanism to use for this connector source
  disabled: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | to enable or disable connector source
  expand: 'expand_example' # String | 
}

begin
  #Edit the provided connector source
  result = api_instance.connectors_id_connector_sources_id_source_put(id_connector, id_source, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->connectors_id_connector_sources_id_source_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **id_source** | **Integer**|  | 
 **auth_mechanism** | **String**| the authentication mechanism to use for this connector source | [optional] 
 **disabled** | **DateTime**| to enable or disable connector source | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectorSource**](ConnectorSource.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **connectors_post**
> Connector connectors_post(name, login, password, opts)

Request a new connector

Send a request to add a new connector<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

name = 'name_example' # String | Name of the bank or provider

login = 'login_example' # String | Users login

password = 'password_example' # String | Users password

opts = { 
  url: 'url_example', # String | Url of the bank
  email: 'email_example', # String | Email of the user
  types: 'types_example', # String | Type of connector, eg. banks or providers
  comment: 'comment_example', # String | Optionnal comment
  sendmail: true, # BOOLEAN | if set, send an email to user
  expand: 'expand_example' # String | 
}

begin
  #Request a new connector
  result = api_instance.connectors_post(name, login, password, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->connectors_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the bank or provider | 
 **login** | **String**| Users login | 
 **password** | **String**| Users password | 
 **url** | **String**| Url of the bank | [optional] 
 **email** | **String**| Email of the user | [optional] 
 **types** | **String**| Type of connector, eg. banks or providers | [optional] 
 **comment** | **String**| Optionnal comment | [optional] 
 **sendmail** | **BOOLEAN**| if set, send an email to user | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Connector**](Connector.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **logs_get**
> InlineResponse20015 logs_get(opts)

Get connection logs

Get logs about connections.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  state: 56, # Integer | state of user
  period: 'period_example', # String | period to group logs
  id_user: 56, # Integer | ID of a user
  id_connection: 56, # Integer | ID of a connection
  id_connector: 56, # Integer | ID of a connector
  charged: true, # BOOLEAN | consider only logs for charged connectors
  id_source: 56, # Integer | ID of a source
  expand: 'expand_example' # String | 
}

begin
  #Get connection logs
  result = api_instance.logs_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **state** | **Integer**| state of user | [optional] 
 **period** | **String**| period to group logs | [optional] 
 **id_user** | **Integer**| ID of a user | [optional] 
 **id_connection** | **Integer**| ID of a connection | [optional] 
 **id_connector** | **Integer**| ID of a connector | [optional] 
 **charged** | **BOOLEAN**| consider only logs for charged connectors | [optional] 
 **id_source** | **Integer**| ID of a source | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **providers_get**
> InlineResponse20020 providers_get(opts)

Get list of connectors



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

api_instance = BudgeaClient::ConnectionsApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get list of connectors
  result = api_instance.providers_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->providers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20020**](InlineResponse20020.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **providers_id_connector_connections_get**
> InlineResponse2009 providers_id_connector_connections_get(id_connector, opts)

Get a random subset of provider's id_connection

By default, it selects a set of 3 connections.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_connector = 56 # Integer | 

opts = { 
  range: 56, # Integer | the length of the connection subset
  expand: 'expand_example' # String | 
}

begin
  #Get a random subset of provider's id_connection
  result = api_instance.providers_id_connector_connections_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->providers_id_connector_connections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **range** | **Integer**| the length of the connection subset | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **providers_id_connector_sources_get**
> InlineResponse20011 providers_id_connector_sources_get(id_connector, opts)

Get list of connector sources



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

api_instance = BudgeaClient::ConnectionsApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get list of connector sources
  result = api_instance.providers_id_connector_sources_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->providers_id_connector_sources_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_delete**
> Connection users_id_user_connections_delete(id_user, opts)

Delete all connections



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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete all connections
  result = api_instance.users_id_user_connections_delete(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_get**
> InlineResponse2009 users_id_user_connections_get(id_user, opts)

Get connections



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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get connections
  result = api_instance.users_id_user_connections_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_delete**
> Connection users_id_user_connections_id_connection_delete(id_user, id_connection, opts)

Delete a connection.

This endpoint deletes a connection and all related accounts and transactions.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete a connection.
  result = api_instance.users_id_user_connections_id_connection_delete(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_id_connection_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_get**
> Connection users_id_user_connections_id_connection_get(id_user, id_connection, opts)

Get connection

Get connection by ID

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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get connection
  result = api_instance.users_id_user_connections_id_connection_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_id_connection_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_informations_get**
> InlineResponse2009 users_id_user_connections_id_connection_informations_get(id_user, id_connection, opts)

Get connection additionnal informations

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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get connection additionnal informations
  result = api_instance.users_id_user_connections_id_connection_informations_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_id_connection_informations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_logs_get**
> InlineResponse20015 users_id_user_connections_id_connection_logs_get(id_user, id_connection, opts)

Get connection logs

Get logs about connections.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  state: 56, # Integer | state of user
  period: 'period_example', # String | period to group logs
  id_user2: 56, # Integer | ID of a user
  id_connection2: 56, # Integer | ID of a connection
  id_connector: 56, # Integer | ID of a connector
  charged: true, # BOOLEAN | consider only logs for charged connectors
  id_source: 56, # Integer | ID of a source
  expand: 'expand_example' # String | 
}

begin
  #Get connection logs
  result = api_instance.users_id_user_connections_id_connection_logs_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_id_connection_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **state** | **Integer**| state of user | [optional] 
 **period** | **String**| period to group logs | [optional] 
 **id_user2** | **Integer**| ID of a user | [optional] 
 **id_connection2** | **Integer**| ID of a connection | [optional] 
 **id_connector** | **Integer**| ID of a connector | [optional] 
 **charged** | **BOOLEAN**| consider only logs for charged connectors | [optional] 
 **id_source** | **Integer**| ID of a source | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_post**
> Connection users_id_user_connections_id_connection_post(id_user, id_connection, opts)

Update a connection.

Give new parameters to change on the configuration of this connection (for example \"password\").<br><br>It tests connection to website, and if it fails, a 400 response is given with the error code \"wrongpass\" or \"websiteUnavailable\".<br><br>You can also supply meta-parameters on connection, like 'active' or 'expire'.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  connection: nil # Object | 
}

begin
  #Update a connection.
  result = api_instance.users_id_user_connections_id_connection_post(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_id_connection_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **connection** | **Object**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **users_id_user_connections_id_connection_put**
> Connection users_id_user_connections_id_connection_put(id_user, id_connection, opts)

Force synchronisation of a connection.

We suggest to pass parameter expand=accounts[transactions] to get all *new* and *updated* transactions.<br><br>Query params: - expand (string): fields to expand - last_update (dateTime): if supplied, get transactions inserted since this date<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Force synchronisation of a connection.
  result = api_instance.users_id_user_connections_id_connection_put(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_id_connection_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_sources_get**
> InlineResponse20016 users_id_user_connections_id_connection_sources_get(id_user, id_connection, opts)

Get connection sources



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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get connection sources
  result = api_instance.users_id_user_connections_id_connection_sources_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_id_connection_sources_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_sources_id_source_delete**
> ConnectionSource users_id_user_connections_id_connection_sources_id_source_delete(id_user, id_connection, id_source, opts)

Disable a connection source

This will make it so the specified source will not be synchronized anymore.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_source = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Disable a connection source
  result = api_instance.users_id_user_connections_id_connection_sources_id_source_delete(id_user, id_connection, id_source, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_id_connection_sources_id_source_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_source** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectionSource**](ConnectionSource.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_sources_id_source_post**
> ConnectionSource users_id_user_connections_id_connection_sources_id_source_post(id_user, id_connection, id_source, opts)

Enable connection source

This will make it so the specified source will be able to be synchronized.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_source = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Enable connection source
  result = api_instance.users_id_user_connections_id_connection_sources_id_source_post(id_user, id_connection, id_source, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_id_connection_sources_id_source_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_source** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectionSource**](ConnectionSource.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_sources_id_source_put**
> ConnectionSource users_id_user_connections_id_connection_sources_id_source_put(id_user, id_connection, id_source, opts)

Enable connection source

This will make it so the specified source will be able to be synchronized.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_source = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Enable connection source
  result = api_instance.users_id_user_connections_id_connection_sources_id_source_put(id_user, id_connection, id_source, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_id_connection_sources_id_source_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_source** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectionSource**](ConnectionSource.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_post**
> Connection users_id_user_connections_post(id_user, opts)

Add a new connection.

Create a new connection to a given bank or provider. You have to give all needed parameters (use /banks/ID/fields or /providers/ID/fields to get them).<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  source: 'source_example', # String | optional comma-separated list of sources to use for the connection synchronization
  expand: 'expand_example', # String | 
  connection: nil # Object | 
}

begin
  #Add a new connection.
  result = api_instance.users_id_user_connections_post(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_connections_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **source** | **String**| optional comma-separated list of sources to use for the connection synchronization | [optional] 
 **expand** | **String**|  | [optional] 
 **connection** | **Object**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **users_id_user_logs_get**
> InlineResponse20015 users_id_user_logs_get(id_user, opts)

Get connection logs

Get logs about connections.<br><br>

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

api_instance = BudgeaClient::ConnectionsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  state: 56, # Integer | state of user
  period: 'period_example', # String | period to group logs
  id_user2: 56, # Integer | ID of a user
  id_connection: 56, # Integer | ID of a connection
  id_connector: 56, # Integer | ID of a connector
  charged: true, # BOOLEAN | consider only logs for charged connectors
  id_source: 56, # Integer | ID of a source
  expand: 'expand_example' # String | 
}

begin
  #Get connection logs
  result = api_instance.users_id_user_logs_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ConnectionsApi->users_id_user_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **state** | **Integer**| state of user | [optional] 
 **period** | **String**| period to group logs | [optional] 
 **id_user2** | **Integer**| ID of a user | [optional] 
 **id_connection** | **Integer**| ID of a connection | [optional] 
 **id_connector** | **Integer**| ID of a connector | [optional] 
 **charged** | **BOOLEAN**| consider only logs for charged connectors | [optional] 
 **id_source** | **Integer**| ID of a source | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



