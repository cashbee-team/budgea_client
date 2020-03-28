# BudgeaClient::TermsApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**terms_get**](TermsApi.md#terms_get) | **GET** /terms | Return the current terms and the content of the associated file
[**terms_id_term_post**](TermsApi.md#terms_id_term_post) | **POST** /terms/{id_term} | Add terms content for a language. Only for the active terms, there is no use to update obsolete terms
[**terms_post**](TermsApi.md#terms_post) | **POST** /terms | Register a version of &#39;Terms of Service&#39; in database
[**users_id_user_terms_get**](TermsApi.md#users_id_user_terms_get) | **GET** /users/{id_user}/terms | Get active terms object for a specific user, only one terms can be active
[**users_id_user_terms_post**](TermsApi.md#users_id_user_terms_post) | **POST** /users/{id_user}/terms | Register user&#39;s consent for a specific terms id


# **terms_get**
> InlineResponse20021 terms_get(opts)

Return the current terms and the content of the associated file



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

api_instance = BudgeaClient::TermsApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Return the current terms and the content of the associated file
  result = api_instance.terms_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TermsApi->terms_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **terms_id_term_post**
> TermsOfService terms_id_term_post(id_term, opts)

Add terms content for a language. Only for the active terms, there is no use to update obsolete terms



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

api_instance = BudgeaClient::TermsApi.new

id_term = 56 # Integer | 

opts = { 
  language: 'language_example', # String | two letter code of the language to inserted
  file_content: File.new('/path/to/file.txt'), # File | file containing the terms
  expand: 'expand_example' # String | 
}

begin
  #Add terms content for a language. Only for the active terms, there is no use to update obsolete terms
  result = api_instance.terms_id_term_post(id_term, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TermsApi->terms_id_term_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_term** | **Integer**|  | 
 **language** | **String**| two letter code of the language to inserted | [optional] 
 **file_content** | **File**| file containing the terms | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**TermsOfService**](TermsOfService.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **terms_post**
> TermsOfService terms_post(opts)

Register a version of 'Terms of Service' in database



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

api_instance = BudgeaClient::TermsApi.new

opts = { 
  version: 'version_example', # String | Number of version
  file_content: File.new('/path/to/file.txt'), # File | file containing the terms, optional
  language: 'language_example', # String | two letters code of the language of the inserted terms if provided. default: 'fr'
  expand: 'expand_example' # String | 
}

begin
  #Register a version of 'Terms of Service' in database
  result = api_instance.terms_post(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TermsApi->terms_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **version** | **String**| Number of version | [optional] 
 **file_content** | **File**| file containing the terms, optional | [optional] 
 **language** | **String**| two letters code of the language of the inserted terms if provided. default: &#39;fr&#39; | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**TermsOfService**](TermsOfService.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_terms_get**
> InlineResponse20021 users_id_user_terms_get(id_user, opts)

Get active terms object for a specific user, only one terms can be active



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

api_instance = BudgeaClient::TermsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get active terms object for a specific user, only one terms can be active
  result = api_instance.users_id_user_terms_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TermsApi->users_id_user_terms_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_terms_post**
> TermsOfService users_id_user_terms_post(id_user, opts)

Register user's consent for a specific terms id



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

api_instance = BudgeaClient::TermsApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  id_terms: 56, # Integer | terms id
  expand: 'expand_example' # String | 
}

begin
  #Register user's consent for a specific terms id
  result = api_instance.users_id_user_terms_post(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling TermsApi->users_id_user_terms_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_terms** | **Integer**| terms id | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**TermsOfService**](TermsOfService.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



