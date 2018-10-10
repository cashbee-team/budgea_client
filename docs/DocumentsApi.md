# BudgeaClient::DocumentsApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**documenttypes_get**](DocumentsApi.md#documenttypes_get) | **GET** /documenttypes | Get document types
[**documenttypes_id_documenttype_put**](DocumentsApi.md#documenttypes_id_documenttype_put) | **PUT** /documenttypes/{id_documenttype} | Edit a document type
[**ocr_post**](DocumentsApi.md#ocr_post) | **POST** /ocr | Post an image with OCR
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_delete**](DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Delete documents
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_get**](DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Get documents
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete**](DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Delete a document
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put**](DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Edit a document
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_post**](DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Add a new document
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_put**](DocumentsApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete**](DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**](DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put**](DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post**](DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put**](DocumentsApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Delete documents
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Get documents
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Add a new document
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put**](DocumentsApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_documents_delete**](DocumentsApi.md#users_id_user_connections_id_connection_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/documents | Delete documents
[**users_id_user_connections_id_connection_documents_get**](DocumentsApi.md#users_id_user_connections_id_connection_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/documents | Get documents
[**users_id_user_connections_id_connection_documents_id_document_delete**](DocumentsApi.md#users_id_user_connections_id_connection_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_documents_id_document_put**](DocumentsApi.md#users_id_user_connections_id_connection_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_documents_post**](DocumentsApi.md#users_id_user_connections_id_connection_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/documents | Add a new document
[**users_id_user_connections_id_connection_documents_put**](DocumentsApi.md#users_id_user_connections_id_connection_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete**](DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Delete documents
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get**](DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Get documents
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete**](DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put**](DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post**](DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Add a new document
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put**](DocumentsApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_delete**](DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Delete documents
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_get**](DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Get documents
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete**](DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put**](DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_post**](DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Add a new document
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_put**](DocumentsApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete**](DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get**](DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put**](DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post**](DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put**](DocumentsApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_documents_delete**](DocumentsApi.md#users_id_user_documents_delete) | **DELETE** /users/{id_user}/documents | Delete documents
[**users_id_user_documents_get**](DocumentsApi.md#users_id_user_documents_get) | **GET** /users/{id_user}/documents | Get documents
[**users_id_user_documents_id_document_delete**](DocumentsApi.md#users_id_user_documents_id_document_delete) | **DELETE** /users/{id_user}/documents/{id_document} | Delete a document
[**users_id_user_documents_id_document_put**](DocumentsApi.md#users_id_user_documents_id_document_put) | **PUT** /users/{id_user}/documents/{id_document} | Edit a document
[**users_id_user_documents_post**](DocumentsApi.md#users_id_user_documents_post) | **POST** /users/{id_user}/documents | Add a new document
[**users_id_user_documents_put**](DocumentsApi.md#users_id_user_documents_put) | **PUT** /users/{id_user}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_ocr_post**](DocumentsApi.md#users_id_user_ocr_post) | **POST** /users/{id_user}/ocr | Post an image with OCR
[**users_id_user_subscriptions_id_subscription_documents_delete**](DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_delete) | **DELETE** /users/{id_user}/subscriptions/{id_subscription}/documents | Delete documents
[**users_id_user_subscriptions_id_subscription_documents_get**](DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_get) | **GET** /users/{id_user}/subscriptions/{id_subscription}/documents | Get documents
[**users_id_user_subscriptions_id_subscription_documents_id_document_delete**](DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_id_document_delete) | **DELETE** /users/{id_user}/subscriptions/{id_subscription}/documents/{id_document} | Delete a document
[**users_id_user_subscriptions_id_subscription_documents_id_document_put**](DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_id_document_put) | **PUT** /users/{id_user}/subscriptions/{id_subscription}/documents/{id_document} | Edit a document
[**users_id_user_subscriptions_id_subscription_documents_post**](DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_post) | **POST** /users/{id_user}/subscriptions/{id_subscription}/documents | Add a new document
[**users_id_user_subscriptions_id_subscription_documents_put**](DocumentsApi.md#users_id_user_subscriptions_id_subscription_documents_put) | **PUT** /users/{id_user}/subscriptions/{id_subscription}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_transactions_id_transaction_documents_delete**](DocumentsApi.md#users_id_user_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/documents | Delete documents
[**users_id_user_transactions_id_transaction_documents_get**](DocumentsApi.md#users_id_user_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/transactions/{id_transaction}/documents | Get documents
[**users_id_user_transactions_id_transaction_documents_id_document_delete**](DocumentsApi.md#users_id_user_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/documents/{id_document} | Delete a document
[**users_id_user_transactions_id_transaction_documents_id_document_put**](DocumentsApi.md#users_id_user_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/transactions/{id_transaction}/documents/{id_document} | Edit a document
[**users_id_user_transactions_id_transaction_documents_post**](DocumentsApi.md#users_id_user_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/transactions/{id_transaction}/documents | Add a new document
[**users_id_user_transactions_id_transaction_documents_put**](DocumentsApi.md#users_id_user_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_delete**](DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_get**](DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put**](DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_post**](DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_put**](DocumentsApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster


# **documenttypes_get**
> InlineResponse20013 documenttypes_get(opts)

Get document types



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

api_instance = BudgeaClient::DocumentsApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get document types
  result = api_instance.documenttypes_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->documenttypes_get: #{e}"
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

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **documenttypes_id_documenttype_put**
> DocumentType documenttypes_id_documenttype_put(id_documenttype, name, attacheable, opts)

Edit a document type

Change value of a document type.<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_documenttype = 56 # Integer | 

name = "name_example" # String | Displayed name of document type

attacheable = 56 # Integer | If true, documents of this type can be attached to a transaction, and have amount related meta-data

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Edit a document type
  result = api_instance.documenttypes_id_documenttype_put(id_documenttype, name, attacheable, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->documenttypes_id_documenttype_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_documenttype** | **Integer**|  | 
 **name** | **String**| Displayed name of document type | 
 **attacheable** | **Integer**| If true, documents of this type can be attached to a transaction, and have amount related meta-data | 
 **expand** | **String**|  | [optional] 

### Return type

[**DocumentType**](DocumentType.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



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

api_instance = BudgeaClient::DocumentsApi.new

file = File.new("/path/to/file.txt") # File | File of the document

opts = { 
  id_transaction: 56, # Integer | Transaction used to help OCR to find data
  name: "name_example" # String | Name of the document
}

begin
  #Post an image with OCR
  api_instance.ocr_post(file, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->ocr_post: #{e}"
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



# **users_id_user_accounts_id_account_transactions_id_transaction_documents_delete**
> Document users_id_user_accounts_id_account_transactions_id_transaction_documents_delete(id_user, id_account, id_transaction, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_documents_delete(id_user, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_documents_get**
> InlineResponse20026 users_id_user_accounts_id_account_transactions_id_transaction_documents_get(id_user, id_account, id_transaction, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_documents_get(id_user, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete**
> Document users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete(id_user, id_account, id_transaction, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete(id_user, id_account, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put**
> Document users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put(id_user, id_account, id_transaction, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put(id_user, id_account, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_documents_post**
> Document users_id_user_accounts_id_account_transactions_id_transaction_documents_post(id_user, id_account, id_transaction, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_documents_post(id_user, id_account, id_transaction, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_documents_put**
> Document users_id_user_accounts_id_account_transactions_id_transaction_documents_put(id_user, id_account, id_transaction, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_documents_put(id_user, id_account, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete**
> Document users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_account, id_transactions_cluster, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_account, id_transactions_cluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**
> InlineResponse20026 users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_account, id_transactions_cluster, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_account, id_transactions_cluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete**
> Document users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_account, id_transactions_cluster, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_account, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put**
> Document users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_account, id_transactions_cluster, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_account, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post**
> Document users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_account, id_transactions_cluster, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_account, id_transactions_cluster, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put**
> Document users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_account, id_transactions_cluster, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_account, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete**
> Document users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete(id_user, id_connection, id_account, id_transaction, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete(id_user, id_connection, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get**
> InlineResponse20026 users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get(id_user, id_connection, id_account, id_transaction, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get(id_user, id_connection, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete**
> Document users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete(id_user, id_connection, id_account, id_transaction, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete(id_user, id_connection, id_account, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put**
> Document users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put(id_user, id_connection, id_account, id_transaction, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put(id_user, id_connection, id_account, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post**
> Document users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post(id_user, id_connection, id_account, id_transaction, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post(id_user, id_connection, id_account, id_transaction, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put**
> Document users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put(id_user, id_connection, id_account, id_transaction, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put(id_user, id_connection, id_account, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete**
> Document users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_connection, id_account, id_transactions_cluster, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_connection, id_account, id_transactions_cluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**
> InlineResponse20026 users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_connection, id_account, id_transactions_cluster, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_connection, id_account, id_transactions_cluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete**
> Document users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put**
> Document users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post**
> Document users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_connection, id_account, id_transactions_cluster, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_connection, id_account, id_transactions_cluster, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put**
> Document users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_documents_delete**
> Document users_id_user_connections_id_connection_documents_delete(id_user, id_connection, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_connections_id_connection_documents_delete(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_documents_get**
> InlineResponse20026 users_id_user_connections_id_connection_documents_get(id_user, id_connection, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_connections_id_connection_documents_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_documents_id_document_delete**
> Document users_id_user_connections_id_connection_documents_id_document_delete(id_user, id_connection, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_connections_id_connection_documents_id_document_delete(id_user, id_connection, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_documents_id_document_put**
> Document users_id_user_connections_id_connection_documents_id_document_put(id_user, id_connection, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_connections_id_connection_documents_id_document_put(id_user, id_connection, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_documents_post**
> Document users_id_user_connections_id_connection_documents_post(id_user, id_connection, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_connections_id_connection_documents_post(id_user, id_connection, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_documents_put**
> Document users_id_user_connections_id_connection_documents_put(id_user, id_connection, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_connections_id_connection_documents_put(id_user, id_connection, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete**
> Document users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete(id_user, id_connection, id_subscription, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete(id_user, id_connection, id_subscription, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_subscription** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get**
> InlineResponse20026 users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get(id_user, id_connection, id_subscription, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get(id_user, id_connection, id_subscription, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_subscription** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete**
> Document users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete(id_user, id_connection, id_subscription, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete(id_user, id_connection, id_subscription, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_subscription** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put**
> Document users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put(id_user, id_connection, id_subscription, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put(id_user, id_connection, id_subscription, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_subscription** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post**
> Document users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post(id_user, id_connection, id_subscription, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post(id_user, id_connection, id_subscription, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_subscription** | **Integer**|  | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put**
> Document users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put(id_user, id_connection, id_subscription, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put(id_user, id_connection, id_subscription, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_subscription** | **Integer**|  | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_documents_delete**
> Document users_id_user_connections_id_connection_transactions_id_transaction_documents_delete(id_user, id_connection, id_transaction, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_documents_delete(id_user, id_connection, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_documents_get**
> InlineResponse20026 users_id_user_connections_id_connection_transactions_id_transaction_documents_get(id_user, id_connection, id_transaction, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_documents_get(id_user, id_connection, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete**
> Document users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete(id_user, id_connection, id_transaction, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete(id_user, id_connection, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put**
> Document users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put(id_user, id_connection, id_transaction, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put(id_user, id_connection, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_documents_post**
> Document users_id_user_connections_id_connection_transactions_id_transaction_documents_post(id_user, id_connection, id_transaction, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_documents_post(id_user, id_connection, id_transaction, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_documents_put**
> Document users_id_user_connections_id_connection_transactions_id_transaction_documents_put(id_user, id_connection, id_transaction, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_documents_put(id_user, id_connection, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete**
> Document users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_connection, id_transactions_cluster, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_connection, id_transactions_cluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get**
> InlineResponse20026 users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_connection, id_transactions_cluster, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_connection, id_transactions_cluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete**
> Document users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_connection, id_transactions_cluster, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_connection, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put**
> Document users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_connection, id_transactions_cluster, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_connection, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post**
> Document users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_connection, id_transactions_cluster, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_connection, id_transactions_cluster, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put**
> Document users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_connection, id_transactions_cluster, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_connection, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_documents_delete**
> Document users_id_user_documents_delete(id_user, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_documents_delete(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_documents_get**
> InlineResponse20026 users_id_user_documents_get(id_user, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_documents_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_documents_id_document_delete**
> Document users_id_user_documents_id_document_delete(id_user, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_documents_id_document_delete(id_user, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_documents_id_document_put**
> Document users_id_user_documents_id_document_put(id_user, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_documents_id_document_put(id_user, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_documents_post**
> Document users_id_user_documents_post(id_user, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_documents_post(id_user, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_documents_put**
> Document users_id_user_documents_put(id_user, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_documents_put(id_user, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
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

api_instance = BudgeaClient::DocumentsApi.new

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
  puts "Exception when calling DocumentsApi->users_id_user_ocr_post: #{e}"
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



# **users_id_user_subscriptions_id_subscription_documents_delete**
> Document users_id_user_subscriptions_id_subscription_documents_delete(id_user, id_subscription, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_subscriptions_id_subscription_documents_delete(id_user, id_subscription, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_subscriptions_id_subscription_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_subscription** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_documents_get**
> InlineResponse20026 users_id_user_subscriptions_id_subscription_documents_get(id_user, id_subscription, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_subscriptions_id_subscription_documents_get(id_user, id_subscription, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_subscriptions_id_subscription_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_subscription** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_documents_id_document_delete**
> Document users_id_user_subscriptions_id_subscription_documents_id_document_delete(id_user, id_subscription, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_subscriptions_id_subscription_documents_id_document_delete(id_user, id_subscription, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_subscriptions_id_subscription_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_subscription** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_documents_id_document_put**
> Document users_id_user_subscriptions_id_subscription_documents_id_document_put(id_user, id_subscription, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_subscriptions_id_subscription_documents_id_document_put(id_user, id_subscription, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_subscriptions_id_subscription_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_subscription** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_documents_post**
> Document users_id_user_subscriptions_id_subscription_documents_post(id_user, id_subscription, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_subscriptions_id_subscription_documents_post(id_user, id_subscription, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_subscriptions_id_subscription_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_subscription** | **Integer**|  | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_documents_put**
> Document users_id_user_subscriptions_id_subscription_documents_put(id_user, id_subscription, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_subscriptions_id_subscription_documents_put(id_user, id_subscription, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_subscriptions_id_subscription_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_subscription** | **Integer**|  | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_documents_delete**
> Document users_id_user_transactions_id_transaction_documents_delete(id_user, id_transaction, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_transactions_id_transaction_documents_delete(id_user, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactions_id_transaction_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_documents_get**
> InlineResponse20026 users_id_user_transactions_id_transaction_documents_get(id_user, id_transaction, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_transactions_id_transaction_documents_get(id_user, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactions_id_transaction_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_documents_id_document_delete**
> Document users_id_user_transactions_id_transaction_documents_id_document_delete(id_user, id_transaction, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_transactions_id_transaction_documents_id_document_delete(id_user, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactions_id_transaction_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_documents_id_document_put**
> Document users_id_user_transactions_id_transaction_documents_id_document_put(id_user, id_transaction, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_transactions_id_transaction_documents_id_document_put(id_user, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactions_id_transaction_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_documents_post**
> Document users_id_user_transactions_id_transaction_documents_post(id_user, id_transaction, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_transactions_id_transaction_documents_post(id_user, id_transaction, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactions_id_transaction_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_documents_put**
> Document users_id_user_transactions_id_transaction_documents_put(id_user, id_transaction, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_transactions_id_transaction_documents_put(id_user, id_transaction, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactions_id_transaction_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactionsclusters_id_transactions_cluster_documents_delete**
> Document users_id_user_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_transactions_cluster, opts)

Delete documents



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_transactions_cluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transactions_cluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactionsclusters_id_transactions_cluster_documents_get**
> InlineResponse20026 users_id_user_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_transactions_cluster, opts)

Get documents

Get list of documents<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximumd (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximumd (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: "expand_example" # String | 
}

begin
  #Get documents
  result = api_instance.users_id_user_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_transactions_cluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transactions_cluster** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **min_amount** | **Float**| minimal (inclusive) amount | [optional] 
 **max_amount** | **Float**| maximumd (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximumd (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete**
> Document users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_transactions_cluster, id_document, opts)

Delete a document



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a document
  result = api_instance.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put**
> Document users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_transactions_cluster, id_document, opts)

Edit a document

Edit meta-data of a specific document.

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse("2013-10-20"), # Date | Date of document
  duedate: Date.parse("2013-10-20"), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Edit a document
  result = api_instance.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**|  | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **date** | **Date**| Date of document | [optional] 
 **duedate** | **Date**| Due date of document | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **Integer**| Is an income or an outcome | [optional] 
 **readonly** | **Integer**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactionsclusters_id_transactions_cluster_documents_post**
> Document users_id_user_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_transactions_cluster, date, duedate, opts)

Add a new document

Add a new document<br><br>

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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

date = Date.parse("2013-10-20") # Date | Date of document

duedate = Date.parse("2013-10-20") # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new("/path/to/file.txt"), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: "name_example", # String | Name of the document
  expand: "expand_example" # String | 
}

begin
  #Add a new document
  result = api_instance.users_id_user_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_transactions_cluster, date, duedate, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transactions_cluster** | **Integer**|  | 
 **date** | **Date**| Date of document | 
 **duedate** | **Date**| Due date of document | 
 **id_type** | **Integer**| Type of this document | [optional] 
 **id_category** | **Integer**| Related category | [optional] 
 **total_amount** | **Float**| Taxed amount | [optional] 
 **untaxed_amount** | **Float**| Untaxed amount | [optional] 
 **vat** | **Float**| VAT amount | [optional] 
 **income** | **BOOLEAN**| Is an income or an outcome | [optional] 
 **readonly** | **BOOLEAN**| Is this file readonly | [optional] 
 **file** | **File**| File of the document | [optional] 
 **id_ocr** | **Integer**| Related OCR process | [optional] 
 **name** | **String**| Name of the document | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactionsclusters_id_transactions_cluster_documents_put**
> Document users_id_user_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_transactions_cluster, id_document, opts)

Attach an existing document to a transaction or a transactions_cluster



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

api_instance = BudgeaClient::DocumentsApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Attach an existing document to a transaction or a transactions_cluster
  result = api_instance.users_id_user_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_transactions_cluster, id_document, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling DocumentsApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transactions_cluster** | **Integer**|  | 
 **id_document** | **Integer**| id of the document you want to attach the file to | 
 **expand** | **String**|  | [optional] 

### Return type

[**Document**](Document.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



