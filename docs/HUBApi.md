# BudgeaClient::HUBApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhooks_id_webhook_add_to_data_post**](HUBApi.md#webhooks_id_webhook_add_to_data_post) | **POST** /webhooks/{id_webhook}/add_to_data | Setup a field to store in user config when calling the endpoint


# **webhooks_id_webhook_add_to_data_post**
> webhooks_id_webhook_add_to_data_post(id_webhook)

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

api_instance = BudgeaClient::HUBApi.new

id_webhook = 56 # Integer | 


begin
  #Setup a field to store in user config when calling the endpoint
  api_instance.webhooks_id_webhook_add_to_data_post(id_webhook)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling HUBApi->webhooks_id_webhook_add_to_data_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_webhook** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



