# BudgeaClient::TransferApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webauth_get**](TransferApi.md#webauth_get) | **GET** /webauth | First step to establish an oAuth2 connection.


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

api_instance = BudgeaClient::TransferApi.new

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
  puts "Exception when calling TransferApi->webauth_get: #{e}"
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

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



