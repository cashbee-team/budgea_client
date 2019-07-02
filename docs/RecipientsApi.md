# BudgeaClient::RecipientsApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**users_id_user_accounts_id_account_recipients_post**](RecipientsApi.md#users_id_user_accounts_id_account_recipients_post) | **POST** /users/{id_user}/accounts/{id_account}/recipients | Add a recipient.
[**users_id_user_connections_id_connection_accounts_id_account_recipients_post**](RecipientsApi.md#users_id_user_connections_id_connection_accounts_id_account_recipients_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients | Add a recipient.
[**users_id_user_connections_id_connection_recipients_post**](RecipientsApi.md#users_id_user_connections_id_connection_recipients_post) | **POST** /users/{id_user}/connections/{id_connection}/recipients | Add a recipient.
[**users_id_user_recipients_post**](RecipientsApi.md#users_id_user_recipients_post) | **POST** /users/{id_user}/recipients | Add a recipient.


# **users_id_user_accounts_id_account_recipients_post**
> Recipient users_id_user_accounts_id_account_recipients_post(id_user, id_account, opts)

Add a recipient.

if config key transfer.recipient.iban_white_list.enabled is set to 1, recipients whose IBAN are not from countries codes contained in transfer.recipient.iban_white_list.entries will be deleted<br><br>

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

api_instance = BudgeaClient::RecipientsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  background: true, # BOOLEAN | if true, do synchronization in background
  label: 'label_example', # String | label of recipient
  iban: 'iban_example', # String | iban of recipient
  expand: 'expand_example' # String | 
}

begin
  #Add a recipient.
  result = api_instance.users_id_user_accounts_id_account_recipients_post(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling RecipientsApi->users_id_user_accounts_id_account_recipients_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **background** | **BOOLEAN**| if true, do synchronization in background | [optional] 
 **label** | **String**| label of recipient | [optional] 
 **iban** | **String**| iban of recipient | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Recipient**](Recipient.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_recipients_post**
> Recipient users_id_user_connections_id_connection_accounts_id_account_recipients_post(id_user, id_connection, id_account, opts)

Add a recipient.

if config key transfer.recipient.iban_white_list.enabled is set to 1, recipients whose IBAN are not from countries codes contained in transfer.recipient.iban_white_list.entries will be deleted<br><br>

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

api_instance = BudgeaClient::RecipientsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  background: true, # BOOLEAN | if true, do synchronization in background
  label: 'label_example', # String | label of recipient
  iban: 'iban_example', # String | iban of recipient
  expand: 'expand_example' # String | 
}

begin
  #Add a recipient.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_recipients_post(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling RecipientsApi->users_id_user_connections_id_connection_accounts_id_account_recipients_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **background** | **BOOLEAN**| if true, do synchronization in background | [optional] 
 **label** | **String**| label of recipient | [optional] 
 **iban** | **String**| iban of recipient | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Recipient**](Recipient.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_recipients_post**
> Recipient users_id_user_connections_id_connection_recipients_post(id_user, id_connection, opts)

Add a recipient.

if config key transfer.recipient.iban_white_list.enabled is set to 1, recipients whose IBAN are not from countries codes contained in transfer.recipient.iban_white_list.entries will be deleted<br><br>

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

api_instance = BudgeaClient::RecipientsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  background: true, # BOOLEAN | if true, do synchronization in background
  label: 'label_example', # String | label of recipient
  iban: 'iban_example', # String | iban of recipient
  expand: 'expand_example' # String | 
}

begin
  #Add a recipient.
  result = api_instance.users_id_user_connections_id_connection_recipients_post(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling RecipientsApi->users_id_user_connections_id_connection_recipients_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **background** | **BOOLEAN**| if true, do synchronization in background | [optional] 
 **label** | **String**| label of recipient | [optional] 
 **iban** | **String**| iban of recipient | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Recipient**](Recipient.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_recipients_post**
> Recipient users_id_user_recipients_post(id_user, opts)

Add a recipient.

if config key transfer.recipient.iban_white_list.enabled is set to 1, recipients whose IBAN are not from countries codes contained in transfer.recipient.iban_white_list.entries will be deleted<br><br>

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

api_instance = BudgeaClient::RecipientsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  background: true, # BOOLEAN | if true, do synchronization in background
  label: 'label_example', # String | label of recipient
  iban: 'iban_example', # String | iban of recipient
  expand: 'expand_example' # String | 
}

begin
  #Add a recipient.
  result = api_instance.users_id_user_recipients_post(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling RecipientsApi->users_id_user_recipients_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **background** | **BOOLEAN**| if true, do synchronization in background | [optional] 
 **label** | **String**| label of recipient | [optional] 
 **iban** | **String**| iban of recipient | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Recipient**](Recipient.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



