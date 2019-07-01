# BudgeaClient::TransfersApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**users_id_user_accounts_id_account_recipients_get**](TransfersApi.md#users_id_user_accounts_id_account_recipients_get) | **GET** /users/{id_user}/accounts/{id_account}/recipients | Returns the list of recipients.
[**users_id_user_accounts_id_account_recipients_id_recipient_post**](TransfersApi.md#users_id_user_accounts_id_account_recipients_id_recipient_post) | **POST** /users/{id_user}/accounts/{id_account}/recipients/{id_recipient} | Continue addition of a recipient.
[**users_id_user_accounts_id_account_recipients_id_recipient_transfers_get**](TransfersApi.md#users_id_user_accounts_id_account_recipients_id_recipient_transfers_get) | **GET** /users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers | Get transfers
[**users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete**](TransfersApi.md#users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer} | Cancel a transfer.
[**users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post**](TransfersApi.md#users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post) | **POST** /users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer} | Execute or edit a Transfer.
[**users_id_user_accounts_id_account_recipients_id_recipient_transfers_post**](TransfersApi.md#users_id_user_accounts_id_account_recipients_id_recipient_transfers_post) | **POST** /users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers | Create a transfer object.
[**users_id_user_accounts_id_account_transfers_get**](TransfersApi.md#users_id_user_accounts_id_account_transfers_get) | **GET** /users/{id_user}/accounts/{id_account}/transfers | Get transfers
[**users_id_user_accounts_id_account_transfers_id_transfer_delete**](TransfersApi.md#users_id_user_accounts_id_account_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transfers/{id_transfer} | Cancel a transfer.
[**users_id_user_accounts_id_account_transfers_id_transfer_post**](TransfersApi.md#users_id_user_accounts_id_account_transfers_id_transfer_post) | **POST** /users/{id_user}/accounts/{id_account}/transfers/{id_transfer} | Execute or edit a Transfer.
[**users_id_user_accounts_id_account_transfers_post**](TransfersApi.md#users_id_user_accounts_id_account_transfers_post) | **POST** /users/{id_user}/accounts/{id_account}/transfers | Create a transfer object.
[**users_id_user_connections_id_connection_accounts_id_account_recipients_get**](TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients | Returns the list of recipients.
[**users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post**](TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient} | Continue addition of a recipient.
[**users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get**](TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers | Get transfers
[**users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete**](TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer} | Cancel a transfer.
[**users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post**](TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer} | Execute or edit a Transfer.
[**users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post**](TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers | Create a transfer object.
[**users_id_user_connections_id_connection_accounts_id_account_transfers_get**](TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_transfers_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers | Get transfers
[**users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete**](TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers/{id_transfer} | Cancel a transfer.
[**users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post**](TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers/{id_transfer} | Execute or edit a Transfer.
[**users_id_user_connections_id_connection_accounts_id_account_transfers_post**](TransfersApi.md#users_id_user_connections_id_connection_accounts_id_account_transfers_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers | Create a transfer object.
[**users_id_user_connections_id_connection_recipients_get**](TransfersApi.md#users_id_user_connections_id_connection_recipients_get) | **GET** /users/{id_user}/connections/{id_connection}/recipients | Returns the list of recipients.
[**users_id_user_connections_id_connection_recipients_id_recipient_post**](TransfersApi.md#users_id_user_connections_id_connection_recipients_id_recipient_post) | **POST** /users/{id_user}/connections/{id_connection}/recipients/{id_recipient} | Continue addition of a recipient.
[**users_id_user_connections_id_connection_recipients_id_recipient_transfers_get**](TransfersApi.md#users_id_user_connections_id_connection_recipients_id_recipient_transfers_get) | **GET** /users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers | Get transfers
[**users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete**](TransfersApi.md#users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers/{id_transfer} | Cancel a transfer.
[**users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post**](TransfersApi.md#users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post) | **POST** /users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers/{id_transfer} | Execute or edit a Transfer.
[**users_id_user_connections_id_connection_recipients_id_recipient_transfers_post**](TransfersApi.md#users_id_user_connections_id_connection_recipients_id_recipient_transfers_post) | **POST** /users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers | Create a transfer object.
[**users_id_user_connections_id_connection_transfers_get**](TransfersApi.md#users_id_user_connections_id_connection_transfers_get) | **GET** /users/{id_user}/connections/{id_connection}/transfers | Get transfers
[**users_id_user_connections_id_connection_transfers_id_transfer_delete**](TransfersApi.md#users_id_user_connections_id_connection_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transfers/{id_transfer} | Cancel a transfer.
[**users_id_user_connections_id_connection_transfers_id_transfer_post**](TransfersApi.md#users_id_user_connections_id_connection_transfers_id_transfer_post) | **POST** /users/{id_user}/connections/{id_connection}/transfers/{id_transfer} | Execute or edit a Transfer.
[**users_id_user_connections_id_connection_transfers_post**](TransfersApi.md#users_id_user_connections_id_connection_transfers_post) | **POST** /users/{id_user}/connections/{id_connection}/transfers | Create a transfer object.
[**users_id_user_recipients_get**](TransfersApi.md#users_id_user_recipients_get) | **GET** /users/{id_user}/recipients | Returns the list of recipients.
[**users_id_user_recipients_id_recipient_post**](TransfersApi.md#users_id_user_recipients_id_recipient_post) | **POST** /users/{id_user}/recipients/{id_recipient} | Continue addition of a recipient.
[**users_id_user_recipients_id_recipient_transfers_get**](TransfersApi.md#users_id_user_recipients_id_recipient_transfers_get) | **GET** /users/{id_user}/recipients/{id_recipient}/transfers | Get transfers
[**users_id_user_recipients_id_recipient_transfers_id_transfer_delete**](TransfersApi.md#users_id_user_recipients_id_recipient_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/recipients/{id_recipient}/transfers/{id_transfer} | Cancel a transfer.
[**users_id_user_recipients_id_recipient_transfers_id_transfer_post**](TransfersApi.md#users_id_user_recipients_id_recipient_transfers_id_transfer_post) | **POST** /users/{id_user}/recipients/{id_recipient}/transfers/{id_transfer} | Execute or edit a Transfer.
[**users_id_user_recipients_id_recipient_transfers_post**](TransfersApi.md#users_id_user_recipients_id_recipient_transfers_post) | **POST** /users/{id_user}/recipients/{id_recipient}/transfers | Create a transfer object.
[**users_id_user_transfers_get**](TransfersApi.md#users_id_user_transfers_get) | **GET** /users/{id_user}/transfers | Get transfers
[**users_id_user_transfers_id_transfer_delete**](TransfersApi.md#users_id_user_transfers_id_transfer_delete) | **DELETE** /users/{id_user}/transfers/{id_transfer} | Cancel a transfer.
[**users_id_user_transfers_id_transfer_post**](TransfersApi.md#users_id_user_transfers_id_transfer_post) | **POST** /users/{id_user}/transfers/{id_transfer} | Execute or edit a Transfer.
[**users_id_user_transfers_post**](TransfersApi.md#users_id_user_transfers_post) | **POST** /users/{id_user}/transfers | Create a transfer object.


# **users_id_user_accounts_id_account_recipients_get**
> InlineResponse20025 users_id_user_accounts_id_account_recipients_get(id_user, id_account, opts)

Returns the list of recipients.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  expand: 'expand_example', # String | 
  category: 'category_example', # String | 
  bank_name: 'bank_name_example', # String | 
  deleted: 'deleted_example', # String | 
  bic: 'bic_example', # String | 
  label: 'label_example', # String | 
  state: 'state_example', # String | 
  iban: 'iban_example', # String | 
  error: 'error_example', # String | 
  id: 'id_example' # String | 
}

begin
  #Returns the list of recipients.
  result = api_instance.users_id_user_accounts_id_account_recipients_get(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_accounts_id_account_recipients_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **expand** | **String**|  | [optional] 
 **category** | **String**|  | [optional] 
 **bank_name** | **String**|  | [optional] 
 **deleted** | **String**|  | [optional] 
 **bic** | **String**|  | [optional] 
 **label** | **String**|  | [optional] 
 **state** | **String**|  | [optional] 
 **iban** | **String**|  | [optional] 
 **error** | **String**|  | [optional] 
 **id** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_recipients_id_recipient_post**
> Recipient users_id_user_accounts_id_account_recipients_id_recipient_post(id_user, id_account, id_recipient, opts)

Continue addition of a recipient.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_recipient = 56 # Integer | 

opts = { 
  background: true, # BOOLEAN | if true, do synchronization in background
  expand: 'expand_example' # String | 
}

begin
  #Continue addition of a recipient.
  result = api_instance.users_id_user_accounts_id_account_recipients_id_recipient_post(id_user, id_account, id_recipient, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_accounts_id_account_recipients_id_recipient_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **background** | **BOOLEAN**| if true, do synchronization in background | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Recipient**](Recipient.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_recipients_id_recipient_transfers_get**
> InlineResponse20026 users_id_user_accounts_id_account_recipients_id_recipient_transfers_get(id_user, id_account, id_recipient, opts)

Get transfers



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_recipient = 56 # Integer | 

opts = { 
  period: 'period_example', # String | period to group logs
  expand: 'expand_example' # String | 
}

begin
  #Get transfers
  result = api_instance.users_id_user_accounts_id_account_recipients_id_recipient_transfers_get(id_user, id_account, id_recipient, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_accounts_id_account_recipients_id_recipient_transfers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **period** | **String**| period to group logs | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete**
> Transfer users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_account, id_recipient, id_transfer, opts)

Cancel a transfer.

It is possible to cancel only a transfer in state 'created'.<br><br>

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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_recipient = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Cancel a transfer.
  result = api_instance.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_account, id_recipient, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post**
> Transfer users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post(id_user, id_account, id_recipient, id_transfer, opts)

Execute or edit a Transfer.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_recipient = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  validated: true, # BOOLEAN | set it to initialize transfer on the bank website.
  id_recipient2: 56, # Integer | set the recipient of the transfer
  expand: 'expand_example' # String | 
}

begin
  #Execute or edit a Transfer.
  result = api_instance.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post(id_user, id_account, id_recipient, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **validated** | **BOOLEAN**| set it to initialize transfer on the bank website. | [optional] 
 **id_recipient2** | **Integer**| set the recipient of the transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_recipients_id_recipient_transfers_post**
> Transfer users_id_user_accounts_id_account_recipients_id_recipient_transfers_post(id_user, id_account, id_recipient, amount, opts)

Create a transfer object.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_recipient = 56 # Integer | 

amount = 3.4 # Float | amount of transfer

opts = { 
  label: 'label_example', # String | reason of transfer
  exec_date: Date.parse('2013-10-20'), # Date | excution date of transfer
  expand: 'expand_example' # String | 
}

begin
  #Create a transfer object.
  result = api_instance.users_id_user_accounts_id_account_recipients_id_recipient_transfers_post(id_user, id_account, id_recipient, amount, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_accounts_id_account_recipients_id_recipient_transfers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **amount** | **Float**| amount of transfer | 
 **label** | **String**| reason of transfer | [optional] 
 **exec_date** | **Date**| excution date of transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transfers_get**
> InlineResponse20026 users_id_user_accounts_id_account_transfers_get(id_user, id_account, opts)

Get transfers



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  period: 'period_example', # String | period to group logs
  expand: 'expand_example' # String | 
}

begin
  #Get transfers
  result = api_instance.users_id_user_accounts_id_account_transfers_get(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_accounts_id_account_transfers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **period** | **String**| period to group logs | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transfers_id_transfer_delete**
> Transfer users_id_user_accounts_id_account_transfers_id_transfer_delete(id_user, id_account, id_transfer, opts)

Cancel a transfer.

It is possible to cancel only a transfer in state 'created'.<br><br>

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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Cancel a transfer.
  result = api_instance.users_id_user_accounts_id_account_transfers_id_transfer_delete(id_user, id_account, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_accounts_id_account_transfers_id_transfer_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transfers_id_transfer_post**
> Transfer users_id_user_accounts_id_account_transfers_id_transfer_post(id_user, id_account, id_transfer, opts)

Execute or edit a Transfer.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  validated: true, # BOOLEAN | set it to initialize transfer on the bank website.
  id_recipient: 56, # Integer | set the recipient of the transfer
  expand: 'expand_example' # String | 
}

begin
  #Execute or edit a Transfer.
  result = api_instance.users_id_user_accounts_id_account_transfers_id_transfer_post(id_user, id_account, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_accounts_id_account_transfers_id_transfer_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **validated** | **BOOLEAN**| set it to initialize transfer on the bank website. | [optional] 
 **id_recipient** | **Integer**| set the recipient of the transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transfers_post**
> Transfer users_id_user_accounts_id_account_transfers_post(id_user, id_account, amount, opts)

Create a transfer object.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

amount = 3.4 # Float | amount of transfer

opts = { 
  label: 'label_example', # String | reason of transfer
  exec_date: Date.parse('2013-10-20'), # Date | excution date of transfer
  expand: 'expand_example' # String | 
}

begin
  #Create a transfer object.
  result = api_instance.users_id_user_accounts_id_account_transfers_post(id_user, id_account, amount, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_accounts_id_account_transfers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **amount** | **Float**| amount of transfer | 
 **label** | **String**| reason of transfer | [optional] 
 **exec_date** | **Date**| excution date of transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_recipients_get**
> InlineResponse20025 users_id_user_connections_id_connection_accounts_id_account_recipients_get(id_user, id_connection, id_account, opts)

Returns the list of recipients.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Returns the list of recipients.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_recipients_get(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_accounts_id_account_recipients_get: #{e}"
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

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post**
> Recipient users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post(id_user, id_connection, id_account, id_recipient, opts)

Continue addition of a recipient.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_recipient = 56 # Integer | 

opts = { 
  background: true, # BOOLEAN | if true, do synchronization in background
  expand: 'expand_example' # String | 
}

begin
  #Continue addition of a recipient.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post(id_user, id_connection, id_account, id_recipient, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **background** | **BOOLEAN**| if true, do synchronization in background | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Recipient**](Recipient.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get**
> InlineResponse20026 users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get(id_user, id_connection, id_account, id_recipient, opts)

Get transfers



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_recipient = 56 # Integer | 

opts = { 
  period: 'period_example', # String | period to group logs
  expand: 'expand_example' # String | 
}

begin
  #Get transfers
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get(id_user, id_connection, id_account, id_recipient, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **period** | **String**| period to group logs | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete**
> Transfer users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_connection, id_account, id_recipient, id_transfer, opts)

Cancel a transfer.

It is possible to cancel only a transfer in state 'created'.<br><br>

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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_recipient = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Cancel a transfer.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_connection, id_account, id_recipient, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post**
> Transfer users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post(id_user, id_connection, id_account, id_recipient, id_transfer, opts)

Execute or edit a Transfer.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_recipient = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  validated: true, # BOOLEAN | set it to initialize transfer on the bank website.
  id_recipient2: 56, # Integer | set the recipient of the transfer
  expand: 'expand_example' # String | 
}

begin
  #Execute or edit a Transfer.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post(id_user, id_connection, id_account, id_recipient, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **validated** | **BOOLEAN**| set it to initialize transfer on the bank website. | [optional] 
 **id_recipient2** | **Integer**| set the recipient of the transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post**
> Transfer users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post(id_user, id_connection, id_account, id_recipient, amount, opts)

Create a transfer object.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_recipient = 56 # Integer | 

amount = 3.4 # Float | amount of transfer

opts = { 
  label: 'label_example', # String | reason of transfer
  exec_date: Date.parse('2013-10-20'), # Date | excution date of transfer
  expand: 'expand_example' # String | 
}

begin
  #Create a transfer object.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post(id_user, id_connection, id_account, id_recipient, amount, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **amount** | **Float**| amount of transfer | 
 **label** | **String**| reason of transfer | [optional] 
 **exec_date** | **Date**| excution date of transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transfers_get**
> InlineResponse20026 users_id_user_connections_id_connection_accounts_id_account_transfers_get(id_user, id_connection, id_account, opts)

Get transfers



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  period: 'period_example', # String | period to group logs
  expand: 'expand_example' # String | 
}

begin
  #Get transfers
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transfers_get(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_accounts_id_account_transfers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **period** | **String**| period to group logs | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete**
> Transfer users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete(id_user, id_connection, id_account, id_transfer, opts)

Cancel a transfer.

It is possible to cancel only a transfer in state 'created'.<br><br>

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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Cancel a transfer.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete(id_user, id_connection, id_account, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post**
> Transfer users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post(id_user, id_connection, id_account, id_transfer, opts)

Execute or edit a Transfer.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  validated: true, # BOOLEAN | set it to initialize transfer on the bank website.
  id_recipient: 56, # Integer | set the recipient of the transfer
  expand: 'expand_example' # String | 
}

begin
  #Execute or edit a Transfer.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post(id_user, id_connection, id_account, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **validated** | **BOOLEAN**| set it to initialize transfer on the bank website. | [optional] 
 **id_recipient** | **Integer**| set the recipient of the transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transfers_post**
> Transfer users_id_user_connections_id_connection_accounts_id_account_transfers_post(id_user, id_connection, id_account, amount, opts)

Create a transfer object.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

amount = 3.4 # Float | amount of transfer

opts = { 
  label: 'label_example', # String | reason of transfer
  exec_date: Date.parse('2013-10-20'), # Date | excution date of transfer
  expand: 'expand_example' # String | 
}

begin
  #Create a transfer object.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transfers_post(id_user, id_connection, id_account, amount, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_accounts_id_account_transfers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **amount** | **Float**| amount of transfer | 
 **label** | **String**| reason of transfer | [optional] 
 **exec_date** | **Date**| excution date of transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_recipients_get**
> InlineResponse20025 users_id_user_connections_id_connection_recipients_get(id_user, id_connection, opts)

Returns the list of recipients.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Returns the list of recipients.
  result = api_instance.users_id_user_connections_id_connection_recipients_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_recipients_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_recipients_id_recipient_post**
> Recipient users_id_user_connections_id_connection_recipients_id_recipient_post(id_user, id_connection, id_recipient, opts)

Continue addition of a recipient.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_recipient = 56 # Integer | 

opts = { 
  background: true, # BOOLEAN | if true, do synchronization in background
  expand: 'expand_example' # String | 
}

begin
  #Continue addition of a recipient.
  result = api_instance.users_id_user_connections_id_connection_recipients_id_recipient_post(id_user, id_connection, id_recipient, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_recipients_id_recipient_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **background** | **BOOLEAN**| if true, do synchronization in background | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Recipient**](Recipient.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_recipients_id_recipient_transfers_get**
> InlineResponse20026 users_id_user_connections_id_connection_recipients_id_recipient_transfers_get(id_user, id_connection, id_recipient, opts)

Get transfers



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_recipient = 56 # Integer | 

opts = { 
  period: 'period_example', # String | period to group logs
  expand: 'expand_example' # String | 
}

begin
  #Get transfers
  result = api_instance.users_id_user_connections_id_connection_recipients_id_recipient_transfers_get(id_user, id_connection, id_recipient, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_recipients_id_recipient_transfers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **period** | **String**| period to group logs | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete**
> Transfer users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_connection, id_recipient, id_transfer, opts)

Cancel a transfer.

It is possible to cancel only a transfer in state 'created'.<br><br>

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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_recipient = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Cancel a transfer.
  result = api_instance.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_connection, id_recipient, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post**
> Transfer users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post(id_user, id_connection, id_recipient, id_transfer, opts)

Execute or edit a Transfer.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_recipient = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  validated: true, # BOOLEAN | set it to initialize transfer on the bank website.
  id_recipient2: 56, # Integer | set the recipient of the transfer
  expand: 'expand_example' # String | 
}

begin
  #Execute or edit a Transfer.
  result = api_instance.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post(id_user, id_connection, id_recipient, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **validated** | **BOOLEAN**| set it to initialize transfer on the bank website. | [optional] 
 **id_recipient2** | **Integer**| set the recipient of the transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_recipients_id_recipient_transfers_post**
> Transfer users_id_user_connections_id_connection_recipients_id_recipient_transfers_post(id_user, id_connection, id_recipient, amount, opts)

Create a transfer object.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_recipient = 56 # Integer | 

amount = 3.4 # Float | amount of transfer

opts = { 
  label: 'label_example', # String | reason of transfer
  exec_date: Date.parse('2013-10-20'), # Date | excution date of transfer
  expand: 'expand_example' # String | 
}

begin
  #Create a transfer object.
  result = api_instance.users_id_user_connections_id_connection_recipients_id_recipient_transfers_post(id_user, id_connection, id_recipient, amount, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_recipients_id_recipient_transfers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_recipient** | **Integer**|  | 
 **amount** | **Float**| amount of transfer | 
 **label** | **String**| reason of transfer | [optional] 
 **exec_date** | **Date**| excution date of transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transfers_get**
> InlineResponse20026 users_id_user_connections_id_connection_transfers_get(id_user, id_connection, opts)

Get transfers



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  period: 'period_example', # String | period to group logs
  expand: 'expand_example' # String | 
}

begin
  #Get transfers
  result = api_instance.users_id_user_connections_id_connection_transfers_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_transfers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **period** | **String**| period to group logs | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transfers_id_transfer_delete**
> Transfer users_id_user_connections_id_connection_transfers_id_transfer_delete(id_user, id_connection, id_transfer, opts)

Cancel a transfer.

It is possible to cancel only a transfer in state 'created'.<br><br>

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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Cancel a transfer.
  result = api_instance.users_id_user_connections_id_connection_transfers_id_transfer_delete(id_user, id_connection, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_transfers_id_transfer_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transfers_id_transfer_post**
> Transfer users_id_user_connections_id_connection_transfers_id_transfer_post(id_user, id_connection, id_transfer, opts)

Execute or edit a Transfer.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  validated: true, # BOOLEAN | set it to initialize transfer on the bank website.
  id_recipient: 56, # Integer | set the recipient of the transfer
  expand: 'expand_example' # String | 
}

begin
  #Execute or edit a Transfer.
  result = api_instance.users_id_user_connections_id_connection_transfers_id_transfer_post(id_user, id_connection, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_transfers_id_transfer_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **validated** | **BOOLEAN**| set it to initialize transfer on the bank website. | [optional] 
 **id_recipient** | **Integer**| set the recipient of the transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transfers_post**
> Transfer users_id_user_connections_id_connection_transfers_post(id_user, id_connection, amount, opts)

Create a transfer object.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

amount = 3.4 # Float | amount of transfer

opts = { 
  label: 'label_example', # String | reason of transfer
  exec_date: Date.parse('2013-10-20'), # Date | excution date of transfer
  expand: 'expand_example' # String | 
}

begin
  #Create a transfer object.
  result = api_instance.users_id_user_connections_id_connection_transfers_post(id_user, id_connection, amount, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_connections_id_connection_transfers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **amount** | **Float**| amount of transfer | 
 **label** | **String**| reason of transfer | [optional] 
 **exec_date** | **Date**| excution date of transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_recipients_get**
> InlineResponse20025 users_id_user_recipients_get(id_user, opts)

Returns the list of recipients.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Returns the list of recipients.
  result = api_instance.users_id_user_recipients_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_recipients_get: #{e}"
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

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_recipients_id_recipient_post**
> Recipient users_id_user_recipients_id_recipient_post(id_user, id_recipient, opts)

Continue addition of a recipient.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_recipient = 56 # Integer | 

opts = { 
  background: true, # BOOLEAN | if true, do synchronization in background
  expand: 'expand_example' # String | 
}

begin
  #Continue addition of a recipient.
  result = api_instance.users_id_user_recipients_id_recipient_post(id_user, id_recipient, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_recipients_id_recipient_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_recipient** | **Integer**|  | 
 **background** | **BOOLEAN**| if true, do synchronization in background | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Recipient**](Recipient.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_recipients_id_recipient_transfers_get**
> InlineResponse20026 users_id_user_recipients_id_recipient_transfers_get(id_user, id_recipient, opts)

Get transfers



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_recipient = 56 # Integer | 

opts = { 
  period: 'period_example', # String | period to group logs
  expand: 'expand_example' # String | 
}

begin
  #Get transfers
  result = api_instance.users_id_user_recipients_id_recipient_transfers_get(id_user, id_recipient, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_recipients_id_recipient_transfers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_recipient** | **Integer**|  | 
 **period** | **String**| period to group logs | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_recipients_id_recipient_transfers_id_transfer_delete**
> Transfer users_id_user_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_recipient, id_transfer, opts)

Cancel a transfer.

It is possible to cancel only a transfer in state 'created'.<br><br>

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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_recipient = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Cancel a transfer.
  result = api_instance.users_id_user_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_recipient, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_recipients_id_recipient_transfers_id_transfer_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_recipient** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_recipients_id_recipient_transfers_id_transfer_post**
> Transfer users_id_user_recipients_id_recipient_transfers_id_transfer_post(id_user, id_recipient, id_transfer, opts)

Execute or edit a Transfer.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_recipient = 56 # Integer | 

id_transfer = 56 # Integer | 

opts = { 
  validated: true, # BOOLEAN | set it to initialize transfer on the bank website.
  id_recipient2: 56, # Integer | set the recipient of the transfer
  expand: 'expand_example' # String | 
}

begin
  #Execute or edit a Transfer.
  result = api_instance.users_id_user_recipients_id_recipient_transfers_id_transfer_post(id_user, id_recipient, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_recipients_id_recipient_transfers_id_transfer_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_recipient** | **Integer**|  | 
 **id_transfer** | **Integer**|  | 
 **validated** | **BOOLEAN**| set it to initialize transfer on the bank website. | [optional] 
 **id_recipient2** | **Integer**| set the recipient of the transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_recipients_id_recipient_transfers_post**
> Transfer users_id_user_recipients_id_recipient_transfers_post(id_user, id_recipient, amount, opts)

Create a transfer object.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_recipient = 56 # Integer | 

amount = 3.4 # Float | amount of transfer

opts = { 
  label: 'label_example', # String | reason of transfer
  exec_date: Date.parse('2013-10-20'), # Date | excution date of transfer
  expand: 'expand_example' # String | 
}

begin
  #Create a transfer object.
  result = api_instance.users_id_user_recipients_id_recipient_transfers_post(id_user, id_recipient, amount, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_recipients_id_recipient_transfers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_recipient** | **Integer**|  | 
 **amount** | **Float**| amount of transfer | 
 **label** | **String**| reason of transfer | [optional] 
 **exec_date** | **Date**| excution date of transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transfers_get**
> InlineResponse20026 users_id_user_transfers_get(id_user, opts)

Get transfers



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  period: 'period_example', # String | period to group logs
  expand: 'expand_example' # String | 
}

begin
  #Get transfers
  result = api_instance.users_id_user_transfers_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_transfers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **period** | **String**| period to group logs | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transfers_id_transfer_delete**
> Transfer users_id_user_transfers_id_transfer_delete(id_user, id_transfer, opts)

Cancel a transfer.

It is possible to cancel only a transfer in state 'created'.<br><br>

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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transfer = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Cancel a transfer.
  result = api_instance.users_id_user_transfers_id_transfer_delete(id_user, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_transfers_id_transfer_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transfer** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transfers_id_transfer_post**
> Transfer users_id_user_transfers_id_transfer_post(id_user, id_transfer, opts)

Execute or edit a Transfer.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transfer = 56 # Integer | 

opts = { 
  validated: true, # BOOLEAN | set it to initialize transfer on the bank website.
  id_recipient: 56, # Integer | set the recipient of the transfer
  expand: 'expand_example' # String | 
}

begin
  #Execute or edit a Transfer.
  result = api_instance.users_id_user_transfers_id_transfer_post(id_user, id_transfer, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_transfers_id_transfer_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transfer** | **Integer**|  | 
 **validated** | **BOOLEAN**| set it to initialize transfer on the bank website. | [optional] 
 **id_recipient** | **Integer**| set the recipient of the transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transfers_post**
> Transfer users_id_user_transfers_post(id_user, amount, opts)

Create a transfer object.



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

api_instance = BudgeaClient::TransfersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

amount = 3.4 # Float | amount of transfer

opts = { 
  label: 'label_example', # String | reason of transfer
  exec_date: Date.parse('2013-10-20'), # Date | excution date of transfer
  expand: 'expand_example' # String | 
}

begin
  #Create a transfer object.
  result = api_instance.users_id_user_transfers_post(id_user, amount, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TransfersApi->users_id_user_transfers_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **amount** | **Float**| amount of transfer | 
 **label** | **String**| reason of transfer | [optional] 
 **exec_date** | **Date**| excution date of transfer | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transfer**](Transfer.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



