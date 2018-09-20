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
[**config_post**](AdministrationApi.md#config_post) | **POST** /config | Set a configuration value on the API.
[**monitoring_get**](AdministrationApi.md#monitoring_get) | **GET** /monitoring | get performances stats on this instance
[**test_sync_post**](AdministrationApi.md#test_sync_post) | **POST** /test/sync | Test synchronization on a random connection.
[**test_webhooks_post**](AdministrationApi.md#test_webhooks_post) | **POST** /test/webhooks | Test synchronization on a random connection.
[**webhooks_delete**](AdministrationApi.md#webhooks_delete) | **DELETE** /webhooks | Deletes all webhooks
[**webhooks_get**](AdministrationApi.md#webhooks_get) | **GET** /webhooks | Get webhooks
[**webhooks_id_webhook_delete**](AdministrationApi.md#webhooks_id_webhook_delete) | **DELETE** /webhooks/{id_webhook} | Deletes a webhook
[**webhooks_id_webhook_post**](AdministrationApi.md#webhooks_id_webhook_post) | **POST** /webhooks/{id_webhook} | Updates a webhook
[**webhooks_id_webhook_put**](AdministrationApi.md#webhooks_id_webhook_put) | **PUT** /webhooks/{id_webhook} | Updates a webhook
[**webhooks_post**](AdministrationApi.md#webhooks_post) | **POST** /webhooks | Adds a new webhook


# **clients_get**
> InlineResponse20011 clients_get(opts)

List clients



### Example
```ruby
# load the gem
require 'budgea_client'

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

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **clients_id_client_delete**
> Client clients_id_client_delete(id_client, opts)

Delete a client



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **clients_id_client_get**
> Client clients_id_client_get(id_client, opts)

Get information about a client

If you use the manage_token, you will get also the client_secret.<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **clients_id_client_logo_delete**
> File clients_id_client_logo_delete(id_client, opts)

Delete the client logo



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **clients_id_client_logo_post**
> File clients_id_client_logo_post(id_client, opts)

Update the client logo



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **clients_id_client_put**
> Client clients_id_client_put(id_client, opts)

Update a client



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

id_client = 56 # Integer | 

opts = { 
  name: "name_example", # String | name of client
  secret: true, # BOOLEAN | reset the secret
  redirect_uri: "redirect_uri_example", # String | redirect_uri
  primary_color: "primary_color_example", # String | hexadecimal code of the client primary color (e.g F45B9A)
  secondary_color: "secondary_color_example", # String | hexadecimal code of the client secondary color (e.g F45B9A)
  description: "description_example", # String | text to display as a default description
  description_banks: "description_banks_example", # String | text to display as a description for banks
  description_providers: "description_providers_example", # String | text to display as a description for providers
  pro: true, # BOOLEAN | Wether the client should display the company manager page
  expand: "expand_example" # String | 
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
 **name** | **String**| name of client | [optional] 
 **secret** | **BOOLEAN**| reset the secret | [optional] 
 **redirect_uri** | **String**| redirect_uri | [optional] 
 **primary_color** | **String**| hexadecimal code of the client primary color (e.g F45B9A) | [optional] 
 **secondary_color** | **String**| hexadecimal code of the client secondary color (e.g F45B9A) | [optional] 
 **description** | **String**| text to display as a default description | [optional] 
 **description_banks** | **String**| text to display as a description for banks | [optional] 
 **description_providers** | **String**| text to display as a description for providers | [optional] 
 **pro** | **BOOLEAN**| Wether the client should display the company manager page | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Client**](Client.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **clients_post**
> Client clients_post(opts)

Create a client



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  expand: "expand_example" # String | 
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
 **expand** | **String**|  | [optional] 

### Return type

[**Client**](Client.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **config_get**
> config_get(opts)

Get configuration of the API.

<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  search: "search_example" # String | limit the results to keys matching the given value
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **config_post**
> Object config_post(opts)

Set a configuration value on the API.

Request: { \"bank.connection.disable_new\": \"0\", \"search\": \"bank.connection.disable_new\" }<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  search: "search_example" # String | limit the results to keys matching the given value
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **monitoring_get**
> monitoring_get(opts)

get performances stats on this instance



### Example
```ruby
# load the gem
require 'budgea_client'

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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **test_sync_post**
> test_sync_post

Test synchronization on a random connection.

It can be used to test receiving data on your webhooks.<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **test_webhooks_post**
> test_webhooks_post

Test synchronization on a random connection.

It can be used to test receiving data on your webhooks.<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **webhooks_delete**
> Webhook webhooks_delete(opts)

Deletes all webhooks

Updates the deleted field with the date of the deletion<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  expand: "expand_example" # String | 
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **webhooks_get**
> InlineResponse20033 webhooks_get(opts)

Get webhooks



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  expand: "expand_example" # String | 
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

[**InlineResponse20033**](InlineResponse20033.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **webhooks_id_webhook_delete**
> Webhook webhooks_id_webhook_delete(id_webhook, opts)

Deletes a webhook

Updates the deleted field with the date of the deletion<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **webhooks_id_webhook_post**
> Webhook webhooks_id_webhook_post(id_webhook, opts)

Updates a webhook



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

opts = { 
  deleted: "deleted_example", # String | a date to delete the webhook or 'null' to enable it
  id_user: 56, # Integer | The user ID to associate with the webhook
  id_service: 56, # Integer | The service ID to associate with the webhook
  url: 3.4, # Float | The webhook callback url
  event: "event_example", # String | The webhook event
  expand: "expand_example" # String | 
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
 **url** | **Float**| The webhook callback url | [optional] 
 **event** | **String**| The webhook event | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **webhooks_id_webhook_put**
> Webhook webhooks_id_webhook_put(id_webhook, opts)

Updates a webhook



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

id_webhook = 56 # Integer | 

opts = { 
  deleted: "deleted_example", # String | a date to delete the webhook or 'null' to enable it
  id_user: 56, # Integer | The user ID to associate with the webhook
  id_service: 56, # Integer | The service ID to associate with the webhook
  url: 3.4, # Float | The webhook callback url
  event: "event_example", # String | The webhook event
  expand: "expand_example" # String | 
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
 **url** | **Float**| The webhook callback url | [optional] 
 **event** | **String**| The webhook event | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **webhooks_post**
> Webhook webhooks_post(opts)

Adds a new webhook



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::AdministrationApi.new

opts = { 
  id_user: 56, # Integer | The user ID to associate with the webhook
  id_service: 56, # Integer | The service ID to associate with the webhook
  url: 3.4, # Float | The webhook callback url
  event: "event_example", # String | The webhook event
  params: "params_example", # String | The webhook parameters as an object with three keys: type, key and value
  expand: "expand_example" # String | 
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
 **url** | **Float**| The webhook callback url | [optional] 
 **event** | **String**| The webhook event | [optional] 
 **params** | **String**| The webhook parameters as an object with three keys: type, key and value | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Webhook**](Webhook.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



