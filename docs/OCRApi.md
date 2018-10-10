# BudgeaClient::OCRApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ocr_post**](OCRApi.md#ocr_post) | **POST** /ocr | Post an image with OCR
[**users_id_user_ocr_post**](OCRApi.md#users_id_user_ocr_post) | **POST** /users/{id_user}/ocr | Post an image with OCR


# **ocr_post**
> ocr_post(file, opts)

Post an image with OCR

Post an image and apply OCR on it to obtain found meta-data.<br><br>

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

api_instance = BudgeaClient::OCRApi.new

file = File.new("/path/to/file.txt") # File | File of the document

opts = { 
  id_transaction: 56, # Integer | Transaction used to help OCR to find data
  name: "name_example" # String | Name of the document
}

begin
  #Post an image with OCR
  api_instance.ocr_post(file, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling OCRApi->ocr_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **File**| File of the document | 
 **id_transaction** | **Integer**| Transaction used to help OCR to find data | [optional] 
 **name** | **String**| Name of the document | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_ocr_post**
> users_id_user_ocr_post(id_user, file, opts)

Post an image with OCR

Post an image and apply OCR on it to obtain found meta-data.<br><br>

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

api_instance = BudgeaClient::OCRApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

file = File.new("/path/to/file.txt") # File | File of the document

opts = { 
  id_transaction: 56, # Integer | Transaction used to help OCR to find data
  name: "name_example" # String | Name of the document
}

begin
  #Post an image with OCR
  api_instance.users_id_user_ocr_post(id_user, file, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling OCRApi->users_id_user_ocr_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **file** | **File**| File of the document | 
 **id_transaction** | **Integer**| Transaction used to help OCR to find data | [optional] 
 **name** | **String**| Name of the document | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



