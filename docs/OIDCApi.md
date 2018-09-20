# BudgeaClient::OIDCApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**oidc_whitelist_id_whitelist_delete**](OIDCApi.md#oidc_whitelist_id_whitelist_delete) | **DELETE** /oidc/whitelist/{id_whitelist} | Delete the supplied authorized redirect uri
[**oidc_whitelist_id_whitelist_post**](OIDCApi.md#oidc_whitelist_id_whitelist_post) | **POST** /oidc/whitelist/{id_whitelist} | Edit a authorized redirect uri
[**oidc_whitelist_post**](OIDCApi.md#oidc_whitelist_post) | **POST** /oidc/whitelist | Adds an authorized redirect uri


# **oidc_whitelist_id_whitelist_delete**
> OidcWhitelist oidc_whitelist_id_whitelist_delete(id_whitelist, opts)

Delete the supplied authorized redirect uri



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::OIDCApi.new

id_whitelist = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete the supplied authorized redirect uri
  result = api_instance.oidc_whitelist_id_whitelist_delete(id_whitelist, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling OIDCApi->oidc_whitelist_id_whitelist_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_whitelist** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**OidcWhitelist**](OidcWhitelist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **oidc_whitelist_id_whitelist_post**
> OidcWhitelist oidc_whitelist_id_whitelist_post(id_whitelist, redirect_uri, opts)

Edit a authorized redirect uri

Edit the uri for the supplied authorized redirect uri.<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::OIDCApi.new

id_whitelist = 56 # Integer | 

redirect_uri = "redirect_uri_example" # String | new authorized redirect uri

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Edit a authorized redirect uri
  result = api_instance.oidc_whitelist_id_whitelist_post(id_whitelist, redirect_uri, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling OIDCApi->oidc_whitelist_id_whitelist_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_whitelist** | **Integer**|  | 
 **redirect_uri** | **String**| new authorized redirect uri | 
 **expand** | **String**|  | [optional] 

### Return type

[**OidcWhitelist**](OidcWhitelist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **oidc_whitelist_post**
> OidcWhitelist oidc_whitelist_post(redirect_uri, opts)

Adds an authorized redirect uri

It requires the authorized redirect uri to be created<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::OIDCApi.new

redirect_uri = "redirect_uri_example" # String | authorized redirect uri to be created

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Adds an authorized redirect uri
  result = api_instance.oidc_whitelist_post(redirect_uri, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling OIDCApi->oidc_whitelist_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **redirect_uri** | **String**| authorized redirect uri to be created | 
 **expand** | **String**|  | [optional] 

### Return type

[**OidcWhitelist**](OidcWhitelist.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



