# BudgeaClient::WealthApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**finance_securities_get**](WealthApi.md#finance_securities_get) | **GET** /finance/securities | Get finance securities
[**finance_securities_id_security_history_get**](WealthApi.md#finance_securities_id_security_history_get) | **GET** /finance/securities/{id_security}/history | Get connection logs
[**users_id_user_accounts_id_account_investments_get**](WealthApi.md#users_id_user_accounts_id_account_investments_get) | **GET** /users/{id_user}/accounts/{id_account}/investments | Get investments
[**users_id_user_accounts_id_account_investments_id_investment_history_get**](WealthApi.md#users_id_user_accounts_id_account_investments_id_investment_history_get) | **GET** /users/{id_user}/accounts/{id_account}/investments/{id_investment}/history | Get investment values
[**users_id_user_accounts_id_account_investments_id_investment_pockets_get**](WealthApi.md#users_id_user_accounts_id_account_investments_id_investment_pockets_get) | **GET** /users/{id_user}/accounts/{id_account}/investments/{id_investment}/pockets | Get pockets
[**users_id_user_accounts_id_account_investments_id_investment_security_history_get**](WealthApi.md#users_id_user_accounts_id_account_investments_id_investment_security_history_get) | **GET** /users/{id_user}/accounts/{id_account}/investments/{id_investment}/security/history | Get connection logs
[**users_id_user_accounts_id_account_pockets_get**](WealthApi.md#users_id_user_accounts_id_account_pockets_get) | **GET** /users/{id_user}/accounts/{id_account}/pockets | Get pockets
[**users_id_user_connections_id_connection_accounts_id_account_investments_get**](WealthApi.md#users_id_user_connections_id_connection_accounts_id_account_investments_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/investments | Get investments
[**users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get**](WealthApi.md#users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/investments/{id_investment}/history | Get investment values
[**users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_pockets_get**](WealthApi.md#users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_pockets_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/investments/{id_investment}/pockets | Get pockets
[**users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get**](WealthApi.md#users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/investments/{id_investment}/security/history | Get connection logs
[**users_id_user_connections_id_connection_accounts_id_account_pockets_get**](WealthApi.md#users_id_user_connections_id_connection_accounts_id_account_pockets_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/pockets | Get pockets
[**users_id_user_connections_id_connection_investments_get**](WealthApi.md#users_id_user_connections_id_connection_investments_get) | **GET** /users/{id_user}/connections/{id_connection}/investments | Get investments
[**users_id_user_connections_id_connection_investments_id_investment_history_get**](WealthApi.md#users_id_user_connections_id_connection_investments_id_investment_history_get) | **GET** /users/{id_user}/connections/{id_connection}/investments/{id_investment}/history | Get investment values
[**users_id_user_connections_id_connection_investments_id_investment_pockets_get**](WealthApi.md#users_id_user_connections_id_connection_investments_id_investment_pockets_get) | **GET** /users/{id_user}/connections/{id_connection}/investments/{id_investment}/pockets | Get pockets
[**users_id_user_connections_id_connection_investments_id_investment_security_history_get**](WealthApi.md#users_id_user_connections_id_connection_investments_id_investment_security_history_get) | **GET** /users/{id_user}/connections/{id_connection}/investments/{id_investment}/security/history | Get connection logs
[**users_id_user_connections_id_connection_pockets_get**](WealthApi.md#users_id_user_connections_id_connection_pockets_get) | **GET** /users/{id_user}/connections/{id_connection}/pockets | Get pockets
[**users_id_user_investments_get**](WealthApi.md#users_id_user_investments_get) | **GET** /users/{id_user}/investments | Get investments
[**users_id_user_investments_id_investment_history_get**](WealthApi.md#users_id_user_investments_id_investment_history_get) | **GET** /users/{id_user}/investments/{id_investment}/history | Get investment values
[**users_id_user_investments_id_investment_pockets_get**](WealthApi.md#users_id_user_investments_id_investment_pockets_get) | **GET** /users/{id_user}/investments/{id_investment}/pockets | Get pockets
[**users_id_user_investments_id_investment_security_history_get**](WealthApi.md#users_id_user_investments_id_investment_security_history_get) | **GET** /users/{id_user}/investments/{id_investment}/security/history | Get connection logs
[**users_id_user_pockets_get**](WealthApi.md#users_id_user_pockets_get) | **GET** /users/{id_user}/pockets | Get pockets


# **finance_securities_get**
> InlineResponse20019 finance_securities_get(opts)

Get finance securities



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

api_instance = BudgeaClient::WealthApi.new

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get finance securities
  result = api_instance.finance_securities_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->finance_securities_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **finance_securities_id_security_history_get**
> finance_securities_id_security_history_get(id_security, opts)

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

api_instance = BudgeaClient::WealthApi.new

id_security = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  period: 'period_example' # String | period to group logs
}

begin
  #Get connection logs
  api_instance.finance_securities_id_security_history_get(id_security, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->finance_securities_id_security_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_security** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **period** | **String**| period to group logs | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accounts_id_account_investments_get**
> InlineResponse20024 users_id_user_accounts_id_account_investments_get(id_user, id_account, opts)

Get investments



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  label: 'label_example', # String | filter investments using keywords in labels
  code: 'code_example', # String | filter investments by ISIN codes
  expand: 'expand_example' # String | 
}

begin
  #Get investments
  result = api_instance.users_id_user_accounts_id_account_investments_get(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_accounts_id_account_investments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **label** | **String**| filter investments using keywords in labels | [optional] 
 **code** | **String**| filter investments by ISIN codes | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20024**](InlineResponse20024.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accounts_id_account_investments_id_investment_history_get**
> InlineResponse20025 users_id_user_accounts_id_account_investments_id_investment_history_get(id_user, id_account, id_investment, opts)

Get investment values



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_investment = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get investment values
  result = api_instance.users_id_user_accounts_id_account_investments_id_investment_history_get(id_user, id_account, id_investment, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_accounts_id_account_investments_id_investment_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_investment** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accounts_id_account_investments_id_investment_pockets_get**
> InlineResponse20026 users_id_user_accounts_id_account_investments_id_investment_pockets_get(id_user, id_account, id_investment, opts)

Get pockets



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_investment = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get pockets
  result = api_instance.users_id_user_accounts_id_account_investments_id_investment_pockets_get(id_user, id_account, id_investment, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_accounts_id_account_investments_id_investment_pockets_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_investment** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accounts_id_account_investments_id_investment_security_history_get**
> users_id_user_accounts_id_account_investments_id_investment_security_history_get(id_user, id_account, id_investment, opts)

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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_investment = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  period: 'period_example' # String | period to group logs
}

begin
  #Get connection logs
  api_instance.users_id_user_accounts_id_account_investments_id_investment_security_history_get(id_user, id_account, id_investment, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_accounts_id_account_investments_id_investment_security_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_investment** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **period** | **String**| period to group logs | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_accounts_id_account_pockets_get**
> InlineResponse20026 users_id_user_accounts_id_account_pockets_get(id_user, id_account, opts)

Get pockets



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get pockets
  result = api_instance.users_id_user_accounts_id_account_pockets_get(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_accounts_id_account_pockets_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_investments_get**
> InlineResponse20024 users_id_user_connections_id_connection_accounts_id_account_investments_get(id_user, id_connection, id_account, opts)

Get investments



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  label: 'label_example', # String | filter investments using keywords in labels
  code: 'code_example', # String | filter investments by ISIN codes
  expand: 'expand_example' # String | 
}

begin
  #Get investments
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_investments_get(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_connections_id_connection_accounts_id_account_investments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **label** | **String**| filter investments using keywords in labels | [optional] 
 **code** | **String**| filter investments by ISIN codes | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20024**](InlineResponse20024.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get**
> InlineResponse20025 users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get(id_user, id_connection, id_account, id_investment, opts)

Get investment values



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_investment = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get investment values
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get(id_user, id_connection, id_account, id_investment, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_investment** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_pockets_get**
> InlineResponse20026 users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_pockets_get(id_user, id_connection, id_account, id_investment, opts)

Get pockets



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_investment = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get pockets
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_pockets_get(id_user, id_connection, id_account, id_investment, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_pockets_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_investment** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get**
> users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get(id_user, id_connection, id_account, id_investment, opts)

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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_investment = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  period: 'period_example' # String | period to group logs
}

begin
  #Get connection logs
  api_instance.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get(id_user, id_connection, id_account, id_investment, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_investment** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **period** | **String**| period to group logs | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_pockets_get**
> InlineResponse20026 users_id_user_connections_id_connection_accounts_id_account_pockets_get(id_user, id_connection, id_account, opts)

Get pockets



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get pockets
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_pockets_get(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_connections_id_connection_accounts_id_account_pockets_get: #{e}"
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

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_investments_get**
> InlineResponse20024 users_id_user_connections_id_connection_investments_get(id_user, id_connection, opts)

Get investments



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  label: 'label_example', # String | filter investments using keywords in labels
  code: 'code_example', # String | filter investments by ISIN codes
  expand: 'expand_example' # String | 
}

begin
  #Get investments
  result = api_instance.users_id_user_connections_id_connection_investments_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_connections_id_connection_investments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **label** | **String**| filter investments using keywords in labels | [optional] 
 **code** | **String**| filter investments by ISIN codes | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20024**](InlineResponse20024.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_investments_id_investment_history_get**
> InlineResponse20025 users_id_user_connections_id_connection_investments_id_investment_history_get(id_user, id_connection, id_investment, opts)

Get investment values



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_investment = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get investment values
  result = api_instance.users_id_user_connections_id_connection_investments_id_investment_history_get(id_user, id_connection, id_investment, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_connections_id_connection_investments_id_investment_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_investment** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_investments_id_investment_pockets_get**
> InlineResponse20026 users_id_user_connections_id_connection_investments_id_investment_pockets_get(id_user, id_connection, id_investment, opts)

Get pockets



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_investment = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get pockets
  result = api_instance.users_id_user_connections_id_connection_investments_id_investment_pockets_get(id_user, id_connection, id_investment, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_connections_id_connection_investments_id_investment_pockets_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_investment** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_investments_id_investment_security_history_get**
> users_id_user_connections_id_connection_investments_id_investment_security_history_get(id_user, id_connection, id_investment, opts)

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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_investment = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  period: 'period_example' # String | period to group logs
}

begin
  #Get connection logs
  api_instance.users_id_user_connections_id_connection_investments_id_investment_security_history_get(id_user, id_connection, id_investment, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_connections_id_connection_investments_id_investment_security_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_investment** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **period** | **String**| period to group logs | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_connections_id_connection_pockets_get**
> InlineResponse20026 users_id_user_connections_id_connection_pockets_get(id_user, id_connection, opts)

Get pockets



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get pockets
  result = api_instance.users_id_user_connections_id_connection_pockets_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_connections_id_connection_pockets_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_investments_get**
> InlineResponse20024 users_id_user_investments_get(id_user, opts)

Get investments



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  label: 'label_example', # String | filter investments using keywords in labels
  code: 'code_example', # String | filter investments by ISIN codes
  expand: 'expand_example' # String | 
}

begin
  #Get investments
  result = api_instance.users_id_user_investments_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_investments_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **label** | **String**| filter investments using keywords in labels | [optional] 
 **code** | **String**| filter investments by ISIN codes | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20024**](InlineResponse20024.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_investments_id_investment_history_get**
> InlineResponse20025 users_id_user_investments_id_investment_history_get(id_user, id_investment, opts)

Get investment values



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_investment = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get investment values
  result = api_instance.users_id_user_investments_id_investment_history_get(id_user, id_investment, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_investments_id_investment_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_investment** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_investments_id_investment_pockets_get**
> InlineResponse20026 users_id_user_investments_id_investment_pockets_get(id_user, id_investment, opts)

Get pockets



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_investment = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get pockets
  result = api_instance.users_id_user_investments_id_investment_pockets_get(id_user, id_investment, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_investments_id_investment_pockets_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_investment** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_investments_id_investment_security_history_get**
> users_id_user_investments_id_investment_security_history_get(id_user, id_investment, opts)

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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_investment = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  period: 'period_example' # String | period to group logs
}

begin
  #Get connection logs
  api_instance.users_id_user_investments_id_investment_security_history_get(id_user, id_investment, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_investments_id_investment_security_history_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_investment** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **period** | **String**| period to group logs | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_pockets_get**
> InlineResponse20026 users_id_user_pockets_get(id_user, opts)

Get pockets



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

api_instance = BudgeaClient::WealthApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get pockets
  result = api_instance.users_id_user_pockets_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling WealthApi->users_id_user_pockets_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20026**](InlineResponse20026.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



