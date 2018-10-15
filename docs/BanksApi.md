# BudgeaClient::BanksApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**account_types_get**](BanksApi.md#account_types_get) | **GET** /account_types | Get account types
[**account_types_id_account_type_get**](BanksApi.md#account_types_id_account_type_get) | **GET** /account_types/{id_account_type} | Get an account type
[**banks_categories_id_category_delete**](BanksApi.md#banks_categories_id_category_delete) | **DELETE** /banks/categories/{id_category} | Delete the supplied category
[**banks_categories_id_category_post**](BanksApi.md#banks_categories_id_category_post) | **POST** /banks/categories/{id_category} | Edit a bank categories
[**banks_categories_post**](BanksApi.md#banks_categories_post) | **POST** /banks/categories | Create bank categories
[**banks_get**](BanksApi.md#banks_get) | **GET** /banks | Get list of connectors
[**banks_id_bank_connections_get**](BanksApi.md#banks_id_bank_connections_get) | **GET** /banks/{id_bank}/connections | Get a subset of id_connection with the largest diversity of account
[**banks_id_bank_logos_get**](BanksApi.md#banks_id_bank_logos_get) | **GET** /banks/{id_bank}/logos | Get all links to the files associated with this bank.
[**banks_id_bank_logos_main_get**](BanksApi.md#banks_id_bank_logos_main_get) | **GET** /banks/{id_bank}/logos/main | Get all links to the files associated with this bank.
[**banks_id_bank_logos_thumbnail_get**](BanksApi.md#banks_id_bank_logos_thumbnail_get) | **GET** /banks/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
[**categories_get**](BanksApi.md#categories_get) | **GET** /categories | Get all categories
[**categorize_post**](BanksApi.md#categorize_post) | **POST** /categorize | categorize transactions without storing them
[**connections_get**](BanksApi.md#connections_get) | **GET** /connections | Get connections without a user
[**connectors_get**](BanksApi.md#connectors_get) | **GET** /connectors | Get list of connectors
[**connectors_id_bank_logos_get**](BanksApi.md#connectors_id_bank_logos_get) | **GET** /connectors/{id_bank}/logos | Get all links to the files associated with this bank.
[**connectors_id_bank_logos_id_logo_delete**](BanksApi.md#connectors_id_bank_logos_id_logo_delete) | **DELETE** /connectors/{id_bank}/logos/{id_logo} | Delete a single Logo object.
[**connectors_id_bank_logos_id_logo_put**](BanksApi.md#connectors_id_bank_logos_id_logo_put) | **PUT** /connectors/{id_bank}/logos/{id_logo} | Create or Update a Bank Logo.
[**connectors_id_bank_logos_main_get**](BanksApi.md#connectors_id_bank_logos_main_get) | **GET** /connectors/{id_bank}/logos/main | Get all links to the files associated with this bank.
[**connectors_id_bank_logos_post**](BanksApi.md#connectors_id_bank_logos_post) | **POST** /connectors/{id_bank}/logos | Create a Bank Logo
[**connectors_id_bank_logos_put**](BanksApi.md#connectors_id_bank_logos_put) | **PUT** /connectors/{id_bank}/logos | Create or Update a Bank Logo
[**connectors_id_bank_logos_thumbnail_get**](BanksApi.md#connectors_id_bank_logos_thumbnail_get) | **GET** /connectors/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
[**connectors_id_connector_put**](BanksApi.md#connectors_id_connector_put) | **PUT** /connectors/{id_connector} | Edit the provided bank
[**connectors_post**](BanksApi.md#connectors_post) | **POST** /connectors | Request a new connector
[**invoicing_get**](BanksApi.md#invoicing_get) | **GET** /invoicing | Get number of accounts, connections and users synced.
[**logs_get**](BanksApi.md#logs_get) | **GET** /logs | Get connection logs
[**providers_get**](BanksApi.md#providers_get) | **GET** /providers | Get list of connectors
[**providers_id_bank_logos_get**](BanksApi.md#providers_id_bank_logos_get) | **GET** /providers/{id_bank}/logos | Get all links to the files associated with this bank.
[**providers_id_bank_logos_main_get**](BanksApi.md#providers_id_bank_logos_main_get) | **GET** /providers/{id_bank}/logos/main | Get all links to the files associated with this bank.
[**providers_id_bank_logos_thumbnail_get**](BanksApi.md#providers_id_bank_logos_thumbnail_get) | **GET** /providers/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
[**users_id_user_account_types_get**](BanksApi.md#users_id_user_account_types_get) | **GET** /users/{id_user}/account_types | Get account types
[**users_id_user_account_types_id_account_type_get**](BanksApi.md#users_id_user_account_types_id_account_type_get) | **GET** /users/{id_user}/account_types/{id_account_type} | Get an account type
[**users_id_user_accounts_delete**](BanksApi.md#users_id_user_accounts_delete) | **DELETE** /users/{id_user}/accounts | Delete all accounts
[**users_id_user_accounts_get**](BanksApi.md#users_id_user_accounts_get) | **GET** /users/{id_user}/accounts | Get accounts list.
[**users_id_user_accounts_id_account_categories_get**](BanksApi.md#users_id_user_accounts_id_account_categories_get) | **GET** /users/{id_user}/accounts/{id_account}/categories | Get the category
[**users_id_user_accounts_id_account_delete**](BanksApi.md#users_id_user_accounts_id_account_delete) | **DELETE** /users/{id_user}/accounts/{id_account} | Delete an account.
[**users_id_user_accounts_id_account_delta_get**](BanksApi.md#users_id_user_accounts_id_account_delta_get) | **GET** /users/{id_user}/accounts/{id_account}/delta | Get deltas of accounts
[**users_id_user_accounts_id_account_logs_get**](BanksApi.md#users_id_user_accounts_id_account_logs_get) | **GET** /users/{id_user}/accounts/{id_account}/logs | Get accounts logs.
[**users_id_user_accounts_id_account_put**](BanksApi.md#users_id_user_accounts_id_account_put) | **PUT** /users/{id_user}/accounts/{id_account} | Update an account
[**users_id_user_accounts_id_account_transactions_delete**](BanksApi.md#users_id_user_accounts_id_account_transactions_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions | Delete transactions
[**users_id_user_accounts_id_account_transactions_get**](BanksApi.md#users_id_user_accounts_id_account_transactions_get) | **GET** /users/{id_user}/accounts/{id_account}/transactions | Get transactions
[**users_id_user_accounts_id_account_transactions_id_transaction_informations_delete**](BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_informations_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations | Delete all arbitrary key-value pairs of a transaction
[**users_id_user_accounts_id_account_transactions_id_transaction_informations_get**](BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_informations_get) | **GET** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations | List all arbitrary key-value pairs on a transaction
[**users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete**](BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information} | Delete a particular key-value pair on a transaction.
[**users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get**](BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get) | **GET** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information} | Get a particular arbitrary key-value pair on a transaction
[**users_id_user_accounts_id_account_transactions_id_transaction_informations_put**](BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_informations_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations | Add or edit transaction arbitrary key-value pairs
[**users_id_user_accounts_id_account_transactions_id_transaction_put**](BanksApi.md#users_id_user_accounts_id_account_transactions_id_transaction_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction} | Edit a transaction meta-data
[**users_id_user_accounts_id_account_transactions_post**](BanksApi.md#users_id_user_accounts_id_account_transactions_post) | **POST** /users/{id_user}/accounts/{id_account}/transactions | Create transactions
[**users_id_user_accounts_id_account_transactionsclusters_get**](BanksApi.md#users_id_user_accounts_id_account_transactionsclusters_get) | **GET** /users/{id_user}/accounts/{id_account}/transactionsclusters | Get clustered transactions
[**users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete**](BanksApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactionscluster} | Delete a clustered transaction
[**users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put**](BanksApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactionscluster} | Edit a clustered transaction
[**users_id_user_accounts_id_account_transactionsclusters_post**](BanksApi.md#users_id_user_accounts_id_account_transactionsclusters_post) | **POST** /users/{id_user}/accounts/{id_account}/transactionsclusters | Create clustered transaction
[**users_id_user_accounts_post**](BanksApi.md#users_id_user_accounts_post) | **POST** /users/{id_user}/accounts | Create an account
[**users_id_user_alerts_get**](BanksApi.md#users_id_user_alerts_get) | **GET** /users/{id_user}/alerts | Get alerts
[**users_id_user_categories_full_get**](BanksApi.md#users_id_user_categories_full_get) | **GET** /users/{id_user}/categories/full | Get the category
[**users_id_user_categories_get**](BanksApi.md#users_id_user_categories_get) | **GET** /users/{id_user}/categories | Get the category
[**users_id_user_connections_delete**](BanksApi.md#users_id_user_connections_delete) | **DELETE** /users/{id_user}/connections | Delete all connections
[**users_id_user_connections_get**](BanksApi.md#users_id_user_connections_get) | **GET** /users/{id_user}/connections | Get connections
[**users_id_user_connections_id_connection_accounts_delete**](BanksApi.md#users_id_user_connections_id_connection_accounts_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts | Delete all accounts
[**users_id_user_connections_id_connection_accounts_get**](BanksApi.md#users_id_user_connections_id_connection_accounts_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts | Get accounts list.
[**users_id_user_connections_id_connection_accounts_id_account_categories_get**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_categories_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/categories | Get the category
[**users_id_user_connections_id_connection_accounts_id_account_delete**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account} | Delete an account.
[**users_id_user_connections_id_connection_accounts_id_account_delta_get**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_delta_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/delta | Get deltas of accounts
[**users_id_user_connections_id_connection_accounts_id_account_logs_get**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_logs_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/logs | Get accounts logs.
[**users_id_user_connections_id_connection_accounts_id_account_put**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account} | Update an account
[**users_id_user_connections_id_connection_accounts_id_account_transactions_delete**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions | Delete transactions
[**users_id_user_connections_id_connection_accounts_id_account_transactions_get**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions | Get transactions
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations | Delete all arbitrary key-value pairs of a transaction
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations | List all arbitrary key-value pairs on a transaction
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information} | Delete a particular key-value pair on a transaction.
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information} | Get a particular arbitrary key-value pair on a transaction
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations | Add or edit transaction arbitrary key-value pairs
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction} | Edit a transaction meta-data
[**users_id_user_connections_id_connection_accounts_id_account_transactions_post**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions | Create transactions
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters | Get clustered transactions
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactionscluster} | Delete a clustered transaction
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactionscluster} | Edit a clustered transaction
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post**](BanksApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters | Create clustered transaction
[**users_id_user_connections_id_connection_accounts_post**](BanksApi.md#users_id_user_connections_id_connection_accounts_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts | Create an account
[**users_id_user_connections_id_connection_delete**](BanksApi.md#users_id_user_connections_id_connection_delete) | **DELETE** /users/{id_user}/connections/{id_connection} | Delete a connection.
[**users_id_user_connections_id_connection_informations_get**](BanksApi.md#users_id_user_connections_id_connection_informations_get) | **GET** /users/{id_user}/connections/{id_connection}/informations | Get connection additionnal informations
[**users_id_user_connections_id_connection_logs_get**](BanksApi.md#users_id_user_connections_id_connection_logs_get) | **GET** /users/{id_user}/connections/{id_connection}/logs | Get connection logs
[**users_id_user_connections_id_connection_post**](BanksApi.md#users_id_user_connections_id_connection_post) | **POST** /users/{id_user}/connections/{id_connection} | Update a connection.
[**users_id_user_connections_id_connection_put**](BanksApi.md#users_id_user_connections_id_connection_put) | **PUT** /users/{id_user}/connections/{id_connection} | Force synchronisation of a connection.
[**users_id_user_connections_id_connection_transactions_delete**](BanksApi.md#users_id_user_connections_id_connection_transactions_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions | Delete transactions
[**users_id_user_connections_id_connection_transactions_get**](BanksApi.md#users_id_user_connections_id_connection_transactions_get) | **GET** /users/{id_user}/connections/{id_connection}/transactions | Get transactions
[**users_id_user_connections_id_connection_transactions_id_transaction_informations_delete**](BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_informations_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations | Delete all arbitrary key-value pairs of a transaction
[**users_id_user_connections_id_connection_transactions_id_transaction_informations_get**](BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_informations_get) | **GET** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations | List all arbitrary key-value pairs on a transaction
[**users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete**](BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations/{id_information} | Delete a particular key-value pair on a transaction.
[**users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get**](BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get) | **GET** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations/{id_information} | Get a particular arbitrary key-value pair on a transaction
[**users_id_user_connections_id_connection_transactions_id_transaction_informations_put**](BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_informations_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations | Add or edit transaction arbitrary key-value pairs
[**users_id_user_connections_id_connection_transactions_id_transaction_put**](BanksApi.md#users_id_user_connections_id_connection_transactions_id_transaction_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction} | Edit a transaction meta-data
[**users_id_user_connections_id_connection_transactions_post**](BanksApi.md#users_id_user_connections_id_connection_transactions_post) | **POST** /users/{id_user}/connections/{id_connection}/transactions | Create transactions
[**users_id_user_connections_id_connection_transactionsclusters_get**](BanksApi.md#users_id_user_connections_id_connection_transactionsclusters_get) | **GET** /users/{id_user}/connections/{id_connection}/transactionsclusters | Get clustered transactions
[**users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete**](BanksApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactionscluster} | Delete a clustered transaction
[**users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put**](BanksApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactionscluster} | Edit a clustered transaction
[**users_id_user_connections_id_connection_transactionsclusters_post**](BanksApi.md#users_id_user_connections_id_connection_transactionsclusters_post) | **POST** /users/{id_user}/connections/{id_connection}/transactionsclusters | Create clustered transaction
[**users_id_user_connections_post**](BanksApi.md#users_id_user_connections_post) | **POST** /users/{id_user}/connections | Add a new connection.
[**users_id_user_forecast_get**](BanksApi.md#users_id_user_forecast_get) | **GET** /users/{id_user}/forecast | Get forecast
[**users_id_user_logs_get**](BanksApi.md#users_id_user_logs_get) | **GET** /users/{id_user}/logs | Get connection logs
[**users_id_user_transactions_delete**](BanksApi.md#users_id_user_transactions_delete) | **DELETE** /users/{id_user}/transactions | Delete transactions
[**users_id_user_transactions_get**](BanksApi.md#users_id_user_transactions_get) | **GET** /users/{id_user}/transactions | Get transactions
[**users_id_user_transactions_id_transaction_informations_delete**](BanksApi.md#users_id_user_transactions_id_transaction_informations_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/informations | Delete all arbitrary key-value pairs of a transaction
[**users_id_user_transactions_id_transaction_informations_get**](BanksApi.md#users_id_user_transactions_id_transaction_informations_get) | **GET** /users/{id_user}/transactions/{id_transaction}/informations | List all arbitrary key-value pairs on a transaction
[**users_id_user_transactions_id_transaction_informations_id_information_delete**](BanksApi.md#users_id_user_transactions_id_transaction_informations_id_information_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/informations/{id_information} | Delete a particular key-value pair on a transaction.
[**users_id_user_transactions_id_transaction_informations_id_information_get**](BanksApi.md#users_id_user_transactions_id_transaction_informations_id_information_get) | **GET** /users/{id_user}/transactions/{id_transaction}/informations/{id_information} | Get a particular arbitrary key-value pair on a transaction
[**users_id_user_transactions_id_transaction_informations_put**](BanksApi.md#users_id_user_transactions_id_transaction_informations_put) | **PUT** /users/{id_user}/transactions/{id_transaction}/informations | Add or edit transaction arbitrary key-value pairs
[**users_id_user_transactions_id_transaction_put**](BanksApi.md#users_id_user_transactions_id_transaction_put) | **PUT** /users/{id_user}/transactions/{id_transaction} | Edit a transaction meta-data
[**users_id_user_transactions_post**](BanksApi.md#users_id_user_transactions_post) | **POST** /users/{id_user}/transactions | Create transactions
[**users_id_user_transactionsclusters_get**](BanksApi.md#users_id_user_transactionsclusters_get) | **GET** /users/{id_user}/transactionsclusters | Get clustered transactions
[**users_id_user_transactionsclusters_id_transactionscluster_delete**](BanksApi.md#users_id_user_transactionsclusters_id_transactionscluster_delete) | **DELETE** /users/{id_user}/transactionsclusters/{id_transactionscluster} | Delete a clustered transaction
[**users_id_user_transactionsclusters_id_transactionscluster_put**](BanksApi.md#users_id_user_transactionsclusters_id_transactionscluster_put) | **PUT** /users/{id_user}/transactionsclusters/{id_transactionscluster} | Edit a clustered transaction
[**users_id_user_transactionsclusters_post**](BanksApi.md#users_id_user_transactionsclusters_post) | **POST** /users/{id_user}/transactionsclusters | Create clustered transaction


# **account_types_get**
> InlineResponse200 account_types_get(opts)

Get account types



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

api_instance = BudgeaClient::BanksApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get account types
  result = api_instance.account_types_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->account_types_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **account_types_id_account_type_get**
> AccountType account_types_id_account_type_get(id_account_type, opts)

Get an account type



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

api_instance = BudgeaClient::BanksApi.new

id_account_type = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get an account type
  result = api_instance.account_types_id_account_type_get(id_account_type, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->account_types_id_account_type_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_account_type** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**AccountType**](AccountType.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_categories_id_category_delete**
> BankCategory banks_categories_id_category_delete(id_category, opts)

Delete the supplied category



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

api_instance = BudgeaClient::BanksApi.new

id_category = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete the supplied category
  result = api_instance.banks_categories_id_category_delete(id_category, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->banks_categories_id_category_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_category** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**BankCategory**](BankCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_categories_id_category_post**
> BankCategory banks_categories_id_category_post(id_category, name, opts)

Edit a bank categories

Edit the name for the supplied category.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_category = 56 # Integer | 

name = "name_example" # String | new name for the supplied category

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Edit a bank categories
  result = api_instance.banks_categories_id_category_post(id_category, name, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->banks_categories_id_category_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_category** | **Integer**|  | 
 **name** | **String**| new name for the supplied category | 
 **expand** | **String**|  | [optional] 

### Return type

[**BankCategory**](BankCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_categories_post**
> BankCategory banks_categories_post(name, opts)

Create bank categories

It requires the name of the category to be created<br><br>

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

api_instance = BudgeaClient::BanksApi.new

name = "name_example" # String | name of the category to be created

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Create bank categories
  result = api_instance.banks_categories_post(name, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->banks_categories_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| name of the category to be created | 
 **expand** | **String**|  | [optional] 

### Return type

[**BankCategory**](BankCategory.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_get**
> InlineResponse2007 banks_get(opts)

Get list of connectors



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

api_instance = BudgeaClient::BanksApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get list of connectors
  result = api_instance.banks_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->banks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_id_bank_connections_get**
> InlineResponse2008 banks_id_bank_connections_get(id_bank, opts)

Get a subset of id_connection with the largest diversity of account

By default, it selects a set of 3 connections.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  range: 56, # Integer | the length of the connection subset
  type: 56, # Integer | to target a specific account type which will be
  expand: "expand_example" # String | 
}

begin
  #Get a subset of id_connection with the largest diversity of account
  result = api_instance.banks_id_bank_connections_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->banks_id_bank_connections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **range** | **Integer**| the length of the connection subset | [optional] 
 **type** | **Integer**| to target a specific account type which will be | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_id_bank_logos_get**
> InlineResponse2009 banks_id_bank_logos_get(id_bank, opts)

Get all links to the files associated with this bank.

This endpoint returns all links to files associated with this bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.banks_id_bank_logos_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->banks_id_bank_logos_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_id_bank_logos_main_get**
> InlineResponse2009 banks_id_bank_logos_main_get(id_bank, opts)

Get all links to the files associated with this bank.

This endpoint returns all links to files associated with this bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.banks_id_bank_logos_main_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->banks_id_bank_logos_main_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_id_bank_logos_thumbnail_get**
> InlineResponse2009 banks_id_bank_logos_thumbnail_get(id_bank, opts)

Get all links to the files associated with this bank.

This endpoint returns all links to files associated with this bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.banks_id_bank_logos_thumbnail_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->banks_id_bank_logos_thumbnail_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **categories_get**
> InlineResponse20010 categories_get(opts)

Get all categories

Ressource to get all existing categories<br><br>

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

api_instance = BudgeaClient::BanksApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all categories
  result = api_instance.categories_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->categories_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **categorize_post**
> Object categorize_post(wording, value, type)

categorize transactions without storing them

It requires an array of transaction dictionaries. Any fields of transactions that are not required will be kept in the response. The response contains the list of transactions with two more fields: id_category and state (it indicates how the transaction has been categorized)<br><br>

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

api_instance = BudgeaClient::BanksApi.new

wording = "wording_example" # String | label of the transaction

value = 56 # Integer | vallue of the transaction

type = "type_example" # String | type of the transaction (default: unknown)


begin
  #categorize transactions without storing them
  result = api_instance.categorize_post(wording, value, type)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->categorize_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **wording** | **String**| label of the transaction | 
 **value** | **Integer**| vallue of the transaction | 
 **type** | **String**| type of the transaction (default: unknown) | 

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connections_get**
> InlineResponse2008 connections_get(opts)

Get connections without a user



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

api_instance = BudgeaClient::BanksApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get connections without a user
  result = api_instance.connections_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->connections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_get**
> InlineResponse20012 connectors_get(opts)

Get list of connectors



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

api_instance = BudgeaClient::BanksApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get list of connectors
  result = api_instance.connectors_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->connectors_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_bank_logos_get**
> InlineResponse2009 connectors_id_bank_logos_get(id_bank, opts)

Get all links to the files associated with this bank.

This endpoint returns all links to files associated with this bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.connectors_id_bank_logos_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->connectors_id_bank_logos_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_bank_logos_id_logo_delete**
> ConnectorLogo connectors_id_bank_logos_id_logo_delete(id_bank, id_logo, opts)

Delete a single Logo object.



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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

id_logo = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a single Logo object.
  result = api_instance.connectors_id_bank_logos_id_logo_delete(id_bank, id_logo, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->connectors_id_bank_logos_id_logo_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **id_logo** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectorLogo**](ConnectorLogo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_bank_logos_id_logo_put**
> ConnectorLogo connectors_id_bank_logos_id_logo_put(id_bank, id_logo, opts)

Create or Update a Bank Logo.

This endpoint creates or update a bank logo. This logo is a mapping between a file (/file route) and a bank (/banks route) or a provider (/providers route).<br><br>Form params: - id_file (integer): The id of the file to link with that bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

id_logo = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Create or Update a Bank Logo.
  result = api_instance.connectors_id_bank_logos_id_logo_put(id_bank, id_logo, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->connectors_id_bank_logos_id_logo_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **id_logo** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectorLogo**](ConnectorLogo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_bank_logos_main_get**
> InlineResponse2009 connectors_id_bank_logos_main_get(id_bank, opts)

Get all links to the files associated with this bank.

This endpoint returns all links to files associated with this bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.connectors_id_bank_logos_main_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->connectors_id_bank_logos_main_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_bank_logos_post**
> ConnectorLogo connectors_id_bank_logos_post(id_bank, opts)

Create a Bank Logo

This endpoint creates a bank logo. You can either pass a file to as a parameter to insert and link it with the bank or pass an id_file to link a bank with an existing file. Will fail if the file is already linked with that bank.<br><br>Form params: - id_file (integer): The id of the file to link with that bank. - img (string): Path to the image to link with that bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Create a Bank Logo
  result = api_instance.connectors_id_bank_logos_post(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->connectors_id_bank_logos_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectorLogo**](ConnectorLogo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_bank_logos_put**
> ConnectorLogo connectors_id_bank_logos_put(id_bank, opts)

Create or Update a Bank Logo

This endpoint creates or update a bank logo. This logo is a mapping between a file (/file route) and a bank (/banks route) or a provider (/providers route).<br><br>Form params: - id_file (integer): The id of the file to link with that bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Create or Update a Bank Logo
  result = api_instance.connectors_id_bank_logos_put(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->connectors_id_bank_logos_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectorLogo**](ConnectorLogo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_bank_logos_thumbnail_get**
> InlineResponse2009 connectors_id_bank_logos_thumbnail_get(id_bank, opts)

Get all links to the files associated with this bank.

This endpoint returns all links to files associated with this bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.connectors_id_bank_logos_thumbnail_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->connectors_id_bank_logos_thumbnail_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_connector_put**
> Bank connectors_id_connector_put(id_connector, opts)

Edit the provided bank

<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_connector = 56 # Integer | 

opts = { 
  id_categories: "id_categories_example", # String | one or several comma separated categories to map to the given bank (or null to map no category)
  hidden: true, # BOOLEAN | to enable  or disable connector (bank or provider)
  sync_frequency: 56, # Integer | Allows you to overload global sync_frequency param
  expand: "expand_example" # String | 
}

begin
  #Edit the provided bank
  result = api_instance.connectors_id_connector_put(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->connectors_id_connector_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **id_categories** | **String**| one or several comma separated categories to map to the given bank (or null to map no category) | [optional] 
 **hidden** | **BOOLEAN**| to enable  or disable connector (bank or provider) | [optional] 
 **sync_frequency** | **Integer**| Allows you to overload global sync_frequency param | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Bank**](Bank.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_post**
> Bank connectors_post(name, login, password, opts)

Request a new connector

Send a request to add a new connector<br><br>

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

api_instance = BudgeaClient::BanksApi.new

name = "name_example" # String | Name of the bank or provider

login = "login_example" # String | Users login

password = "password_example" # String | Users password

opts = { 
  api: "api_example", # String | Name of the API
  url: "url_example", # String | Url of the bank
  email: "email_example", # String | Email of the user
  types: "types_example", # String | Type of connector, eg. banks or providers
  comment: "comment_example", # String | Optionnal comment
  sendmail: true, # BOOLEAN | if set, send an email to user
  expand: "expand_example" # String | 
}

begin
  #Request a new connector
  result = api_instance.connectors_post(name, login, password, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->connectors_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **String**| Name of the bank or provider | 
 **login** | **String**| Users login | 
 **password** | **String**| Users password | 
 **api** | **String**| Name of the API | [optional] 
 **url** | **String**| Url of the bank | [optional] 
 **email** | **String**| Email of the user | [optional] 
 **types** | **String**| Type of connector, eg. banks or providers | [optional] 
 **comment** | **String**| Optionnal comment | [optional] 
 **sendmail** | **BOOLEAN**| if set, send an email to user | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Bank**](Bank.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **invoicing_get**
> invoicing_get(opts)

Get number of accounts, connections and users synced.

Get number of accounts, connections and users synced between two dates for the given period.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

opts = { 
  min_date: Date.parse("2013-10-20"), # Date | minimal date
  max_date: Date.parse("2013-10-20"), # Date | maximum date
  period: "period_example", # String | period to group logs
  all: "all_example" # String | get full ids list instead of numbers
}

begin
  #Get number of accounts, connections and users synced.
  api_instance.invoicing_get(opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->invoicing_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **period** | **String**| period to group logs | [optional] 
 **all** | **String**| get full ids list instead of numbers | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **logs_get**
> InlineResponse20015 logs_get(opts)

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

api_instance = BudgeaClient::BanksApi.new

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal date
  max_date: Date.parse("2013-10-20"), # Date | maximum date
  state: 56, # Integer | state of user
  period: "period_example", # String | period to group logs
  id_user: 56, # Integer | ID of a user
  id_connection: 56, # Integer | ID of a connection
  id_bank: 56, # Integer | ID of a bank
  charged: true, # BOOLEAN | consider only logs for charged banks
  expand: "expand_example" # String | 
}

begin
  #Get connection logs
  result = api_instance.logs_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **state** | **Integer**| state of user | [optional] 
 **period** | **String**| period to group logs | [optional] 
 **id_user** | **Integer**| ID of a user | [optional] 
 **id_connection** | **Integer**| ID of a connection | [optional] 
 **id_bank** | **Integer**| ID of a bank | [optional] 
 **charged** | **BOOLEAN**| consider only logs for charged banks | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **providers_get**
> InlineResponse2007 providers_get(opts)

Get list of connectors



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

api_instance = BudgeaClient::BanksApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get list of connectors
  result = api_instance.providers_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->providers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **providers_id_bank_logos_get**
> InlineResponse2009 providers_id_bank_logos_get(id_bank, opts)

Get all links to the files associated with this bank.

This endpoint returns all links to files associated with this bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.providers_id_bank_logos_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->providers_id_bank_logos_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **providers_id_bank_logos_main_get**
> InlineResponse2009 providers_id_bank_logos_main_get(id_bank, opts)

Get all links to the files associated with this bank.

This endpoint returns all links to files associated with this bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.providers_id_bank_logos_main_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->providers_id_bank_logos_main_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **providers_id_bank_logos_thumbnail_get**
> InlineResponse2009 providers_id_bank_logos_thumbnail_get(id_bank, opts)

Get all links to the files associated with this bank.

This endpoint returns all links to files associated with this bank.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.providers_id_bank_logos_thumbnail_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->providers_id_bank_logos_thumbnail_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_bank** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_account_types_get**
> InlineResponse200 users_id_user_account_types_get(id_user, opts)

Get account types



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get account types
  result = api_instance.users_id_user_account_types_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_account_types_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse200**](InlineResponse200.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_account_types_id_account_type_get**
> AccountType users_id_user_account_types_id_account_type_get(id_user, id_account_type, opts)

Get an account type



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account_type = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get an account type
  result = api_instance.users_id_user_account_types_id_account_type_get(id_user, id_account_type, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_account_types_id_account_type_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account_type** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**AccountType**](AccountType.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_delete**
> Account users_id_user_accounts_delete(id_user, opts)

Delete all accounts



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete all accounts
  result = api_instance.users_id_user_accounts_delete(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_get**
> InlineResponse20018 users_id_user_accounts_get(id_user, opts)

Get accounts list.



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get accounts list.
  result = api_instance.users_id_user_accounts_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_categories_get**
> users_id_user_accounts_id_account_categories_get(id_user, id_account)

Get the category

Ressource to get categories for the user's transactions<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 


begin
  #Get the category
  api_instance.users_id_user_accounts_id_account_categories_get(id_user, id_account)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_categories_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_delete**
> Account users_id_user_accounts_id_account_delete(id_user, id_account, opts)

Delete an account.

It deletes a specific account. If this is the last synced account of a connection, it will be removed too.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete an account.
  result = api_instance.users_id_user_accounts_id_account_delete(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_delta_get**
> users_id_user_accounts_id_account_delta_get(id_user, id_account, opts)

Get deltas of accounts

Get account delta between sums of transactions and difference of account balance for the given period.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  min_date: Date.parse("2013-10-20"), # Date | minimal date
  max_date: Date.parse("2013-10-20"), # Date | maximum date
  period: "period_example" # String | period to group logs
}

begin
  #Get deltas of accounts
  api_instance.users_id_user_accounts_id_account_delta_get(id_user, id_account, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_delta_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **period** | **String**| period to group logs | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_logs_get**
> InlineResponse20021 users_id_user_accounts_id_account_logs_get(id_user, id_account, opts)

Get accounts logs.

Get logs of account.<br><br>By default, it selects logs for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  expand: "expand_example" # String | 
}

begin
  #Get accounts logs.
  result = api_instance.users_id_user_accounts_id_account_logs_get(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_put**
> Account users_id_user_accounts_id_account_put(id_user, id_account, opts)

Update an account

It updates a specific account<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  display: true, # BOOLEAN | If the account is displayed
  name: "name_example", # String | Label of the account
  balance: 3.4, # Float | Balance of the account
  disabled: true, # BOOLEAN | If the account is disabled (not synchronized)
  iban: "iban_example", # String | IBAN of the account
  bookmarked: true, # BOOLEAN | If the account is bookmarked
  expand: "expand_example" # String | 
}

begin
  #Update an account
  result = api_instance.users_id_user_accounts_id_account_put(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **display** | **BOOLEAN**| If the account is displayed | [optional] 
 **name** | **String**| Label of the account | [optional] 
 **balance** | **Float**| Balance of the account | [optional] 
 **disabled** | **BOOLEAN**| If the account is disabled (not synchronized) | [optional] 
 **iban** | **String**| IBAN of the account | [optional] 
 **bookmarked** | **BOOLEAN**| If the account is bookmarked | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_delete**
> Transaction users_id_user_accounts_id_account_transactions_delete(id_user, id_account, opts)

Delete transactions



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete transactions
  result = api_instance.users_id_user_accounts_id_account_transactions_delete(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactions_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_get**
> InlineResponse20025 users_id_user_accounts_id_account_transactions_get(id_user, id_account, opts)

Get transactions

Get list of transactions.<br><br>By default, it selects transactions for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  income: true, # BOOLEAN | filter on income or expenditures
  deleted: true, # BOOLEAN | display only deleted transactions
  all: true, # BOOLEAN | display all transactions, including deleted ones
  last_update: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | get only transactions updated after the specified datetime
  wording: "wording_example", # String | filter transactions containing the given string
  min_value: 3.4, # Float | minimal (inclusive) value
  max_value: 3.4, # Float | maximum (inclusive) value
  search: "search_example", # String | search in labels, dates, values and categories
  value: "value_example", # String | \"XX|-XX\" or \"±XX\"
  expand: "expand_example" # String | 
}

begin
  #Get transactions
  result = api_instance.users_id_user_accounts_id_account_transactions_get(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **income** | **BOOLEAN**| filter on income or expenditures | [optional] 
 **deleted** | **BOOLEAN**| display only deleted transactions | [optional] 
 **all** | **BOOLEAN**| display all transactions, including deleted ones | [optional] 
 **last_update** | **DateTime**| get only transactions updated after the specified datetime | [optional] 
 **wording** | **String**| filter transactions containing the given string | [optional] 
 **min_value** | **Float**| minimal (inclusive) value | [optional] 
 **max_value** | **Float**| maximum (inclusive) value | [optional] 
 **search** | **String**| search in labels, dates, values and categories | [optional] 
 **value** | **String**| \&quot;XX|-XX\&quot; or \&quot;±XX\&quot; | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_informations_delete**
> TransactionInformation users_id_user_accounts_id_account_transactions_id_transaction_informations_delete(id_user, id_account, id_transaction, opts)

Delete all arbitrary key-value pairs of a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete all arbitrary key-value pairs of a transaction
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_informations_delete(id_user, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactions_id_transaction_informations_delete: #{e}"
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

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_informations_get**
> InlineResponse20027 users_id_user_accounts_id_account_transactions_id_transaction_informations_get(id_user, id_account, id_transaction, opts)

List all arbitrary key-value pairs on a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #List all arbitrary key-value pairs on a transaction
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_informations_get(id_user, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactions_id_transaction_informations_get: #{e}"
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

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete**
> TransactionInformation users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete(id_user, id_account, id_transaction, id_information, opts)

Delete a particular key-value pair on a transaction.



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_information = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a particular key-value pair on a transaction.
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete(id_user, id_account, id_transaction, id_information, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_information** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get**
> TransactionInformation users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get(id_user, id_account, id_transaction, id_information, opts)

Get a particular arbitrary key-value pair on a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_information = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get a particular arbitrary key-value pair on a transaction
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get(id_user, id_account, id_transaction, id_information, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_information** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_informations_put**
> TransactionInformation users_id_user_accounts_id_account_transactions_id_transaction_informations_put(id_user, id_account, id_transaction, opts)

Add or edit transaction arbitrary key-value pairs



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Add or edit transaction arbitrary key-value pairs
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_informations_put(id_user, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactions_id_transaction_informations_put: #{e}"
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

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_put**
> Transaction users_id_user_accounts_id_account_transactions_id_transaction_put(id_user, id_account, id_transaction, opts)

Edit a transaction meta-data



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  wording: "wording_example", # String | user rewording of the transaction
  application_date: Date.parse("2013-10-20"), # Date | change application date of the transaction
  id_category: 56, # Integer | ID of the associated category
  comment: "comment_example", # String | change comment
  active: true, # BOOLEAN | if false, transaction isn't considered in analyzisis endpoints (like /balances)
  expand: "expand_example" # String | 
}

begin
  #Edit a transaction meta-data
  result = api_instance.users_id_user_accounts_id_account_transactions_id_transaction_put(id_user, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactions_id_transaction_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **wording** | **String**| user rewording of the transaction | [optional] 
 **application_date** | **Date**| change application date of the transaction | [optional] 
 **id_category** | **Integer**| ID of the associated category | [optional] 
 **comment** | **String**| change comment | [optional] 
 **active** | **BOOLEAN**| if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances) | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_post**
> Transaction users_id_user_accounts_id_account_transactions_post(id_user, id_account, original_wording, value, date, opts)

Create transactions

Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.<br><br><br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

original_wording = "original_wording_example" # String | label of the transaction

value = 56 # Integer | vallue of the transaction

date = Date.parse("2013-10-20") # Date | date of the transaction

opts = { 
  type: "type_example", # String | type of the transaction (default: unknown)
  state: "state_example", # String | nature of the transaction (default: new)
  rdate: Date.parse("2013-10-20"), # Date | realisation date of the transaction (default: value of date)
  coming: true, # BOOLEAN | 1 if the transaction has already been debited (default: 0)
  active: true, # BOOLEAN | 1 if the transaction should be taken into account by pfm services (default: 1)
  date_scraped: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
  id_account2: 56, # Integer | account of the transaction. If not supplied, it has to be given in the route
  expand: "expand_example" # String | 
}

begin
  #Create transactions
  result = api_instance.users_id_user_accounts_id_account_transactions_post(id_user, id_account, original_wording, value, date, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **original_wording** | **String**| label of the transaction | 
 **value** | **Integer**| vallue of the transaction | 
 **date** | **Date**| date of the transaction | 
 **type** | **String**| type of the transaction (default: unknown) | [optional] 
 **state** | **String**| nature of the transaction (default: new) | [optional] 
 **rdate** | **Date**| realisation date of the transaction (default: value of date) | [optional] 
 **coming** | **BOOLEAN**| 1 if the transaction has already been debited (default: 0) | [optional] 
 **active** | **BOOLEAN**| 1 if the transaction should be taken into account by pfm services (default: 1) | [optional] 
 **date_scraped** | **DateTime**| date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now) | [optional] 
 **id_account2** | **Integer**| account of the transaction. If not supplied, it has to be given in the route | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactionsclusters_get**
> InlineResponse20028 users_id_user_accounts_id_account_transactionsclusters_get(id_user, id_account, opts)

Get clustered transactions



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get clustered transactions
  result = api_instance.users_id_user_accounts_id_account_transactionsclusters_get(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactionsclusters_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete**
> TransactionsCluster users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete(id_user, id_account, id_transactionscluster, opts)

Delete a clustered transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactionscluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a clustered transaction
  result = api_instance.users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete(id_user, id_account, id_transactionscluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transactionscluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put**
> TransactionsCluster users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put(id_user, id_account, id_transactionscluster, opts)

Edit a clustered transaction

Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactionscluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Edit a clustered transaction
  result = api_instance.users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put(id_user, id_account, id_transactionscluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **id_transactionscluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactionsclusters_post**
> TransactionsCluster users_id_user_accounts_id_account_transactionsclusters_post(id_user, id_account, opts)

Create clustered transaction

Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Create clustered transaction
  result = api_instance.users_id_user_accounts_id_account_transactionsclusters_post(id_user, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_id_account_transactionsclusters_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_account** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_post**
> Account users_id_user_accounts_post(id_user, name, balance, opts)

Create an account

This endpoint creates an account not related to a connection.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

name = "name_example" # String | name of account

balance = 3.4 # Float | balance of account

opts = { 
  number: "number_example", # String | number of account
  iban: "iban_example", # String | IBAN of account
  id_currency: "id_currency_example", # String | the currency of the account (default: 'EUR')
  expand: "expand_example" # String | 
}

begin
  #Create an account
  result = api_instance.users_id_user_accounts_post(id_user, name, balance, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_accounts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **name** | **String**| name of account | 
 **balance** | **Float**| balance of account | 
 **number** | **String**| number of account | [optional] 
 **iban** | **String**| IBAN of account | [optional] 
 **id_currency** | **String**| the currency of the account (default: &#39;EUR&#39;) | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_alerts_get**
> InlineResponse20029 users_id_user_alerts_get(id_user, opts)

Get alerts



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get alerts
  result = api_instance.users_id_user_alerts_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_alerts_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20029**](InlineResponse20029.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_categories_full_get**
> InlineResponse20030 users_id_user_categories_full_get(id_user, opts)

Get the category

Ressource to get categories<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get the category
  result = api_instance.users_id_user_categories_full_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_categories_full_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_categories_get**
> users_id_user_categories_get(id_user)

Get the category

Ressource to get categories for the user's transactions<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'


begin
  #Get the category
  api_instance.users_id_user_categories_get(id_user)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_categories_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_delete**
> Connection users_id_user_connections_delete(id_user, opts)

Delete all connections



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete all connections
  result = api_instance.users_id_user_connections_delete(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_get**
> InlineResponse2008 users_id_user_connections_get(id_user, opts)

Get connections



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get connections
  result = api_instance.users_id_user_connections_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_delete**
> Account users_id_user_connections_id_connection_accounts_delete(id_user, id_connection, opts)

Delete all accounts



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete all accounts
  result = api_instance.users_id_user_connections_id_connection_accounts_delete(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_get**
> InlineResponse20018 users_id_user_connections_id_connection_accounts_get(id_user, id_connection, opts)

Get accounts list.



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get accounts list.
  result = api_instance.users_id_user_connections_id_connection_accounts_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20018**](InlineResponse20018.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_categories_get**
> users_id_user_connections_id_connection_accounts_id_account_categories_get(id_user, id_connection, id_account)

Get the category

Ressource to get categories for the user's transactions<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 


begin
  #Get the category
  api_instance.users_id_user_connections_id_connection_accounts_id_account_categories_get(id_user, id_connection, id_account)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_categories_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_delete**
> Account users_id_user_connections_id_connection_accounts_id_account_delete(id_user, id_connection, id_account, opts)

Delete an account.

It deletes a specific account. If this is the last synced account of a connection, it will be removed too.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete an account.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_delete(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_delete: #{e}"
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

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_delta_get**
> users_id_user_connections_id_connection_accounts_id_account_delta_get(id_user, id_connection, id_account, opts)

Get deltas of accounts

Get account delta between sums of transactions and difference of account balance for the given period.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  min_date: Date.parse("2013-10-20"), # Date | minimal date
  max_date: Date.parse("2013-10-20"), # Date | maximum date
  period: "period_example" # String | period to group logs
}

begin
  #Get deltas of accounts
  api_instance.users_id_user_connections_id_connection_accounts_id_account_delta_get(id_user, id_connection, id_account, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_delta_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **period** | **String**| period to group logs | [optional] 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_logs_get**
> InlineResponse20021 users_id_user_connections_id_connection_accounts_id_account_logs_get(id_user, id_connection, id_account, opts)

Get accounts logs.

Get logs of account.<br><br>By default, it selects logs for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  expand: "expand_example" # String | 
}

begin
  #Get accounts logs.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_logs_get(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20021**](InlineResponse20021.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_put**
> Account users_id_user_connections_id_connection_accounts_id_account_put(id_user, id_connection, id_account, opts)

Update an account

It updates a specific account<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  display: true, # BOOLEAN | If the account is displayed
  name: "name_example", # String | Label of the account
  balance: 3.4, # Float | Balance of the account
  disabled: true, # BOOLEAN | If the account is disabled (not synchronized)
  iban: "iban_example", # String | IBAN of the account
  bookmarked: true, # BOOLEAN | If the account is bookmarked
  expand: "expand_example" # String | 
}

begin
  #Update an account
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_put(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **display** | **BOOLEAN**| If the account is displayed | [optional] 
 **name** | **String**| Label of the account | [optional] 
 **balance** | **Float**| Balance of the account | [optional] 
 **disabled** | **BOOLEAN**| If the account is disabled (not synchronized) | [optional] 
 **iban** | **String**| IBAN of the account | [optional] 
 **bookmarked** | **BOOLEAN**| If the account is bookmarked | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_delete**
> Transaction users_id_user_connections_id_connection_accounts_id_account_transactions_delete(id_user, id_connection, id_account, opts)

Delete transactions



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete transactions
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_delete(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactions_delete: #{e}"
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

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_get**
> InlineResponse20025 users_id_user_connections_id_connection_accounts_id_account_transactions_get(id_user, id_connection, id_account, opts)

Get transactions

Get list of transactions.<br><br>By default, it selects transactions for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  income: true, # BOOLEAN | filter on income or expenditures
  deleted: true, # BOOLEAN | display only deleted transactions
  all: true, # BOOLEAN | display all transactions, including deleted ones
  last_update: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | get only transactions updated after the specified datetime
  wording: "wording_example", # String | filter transactions containing the given string
  min_value: 3.4, # Float | minimal (inclusive) value
  max_value: 3.4, # Float | maximum (inclusive) value
  search: "search_example", # String | search in labels, dates, values and categories
  value: "value_example", # String | \"XX|-XX\" or \"±XX\"
  expand: "expand_example" # String | 
}

begin
  #Get transactions
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_get(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactions_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal (inclusive) date | [optional] 
 **max_date** | **Date**| maximum (inclusive) date | [optional] 
 **income** | **BOOLEAN**| filter on income or expenditures | [optional] 
 **deleted** | **BOOLEAN**| display only deleted transactions | [optional] 
 **all** | **BOOLEAN**| display all transactions, including deleted ones | [optional] 
 **last_update** | **DateTime**| get only transactions updated after the specified datetime | [optional] 
 **wording** | **String**| filter transactions containing the given string | [optional] 
 **min_value** | **Float**| minimal (inclusive) value | [optional] 
 **max_value** | **Float**| maximum (inclusive) value | [optional] 
 **search** | **String**| search in labels, dates, values and categories | [optional] 
 **value** | **String**| \&quot;XX|-XX\&quot; or \&quot;±XX\&quot; | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete**
> TransactionInformation users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete(id_user, id_connection, id_account, id_transaction, opts)

Delete all arbitrary key-value pairs of a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete all arbitrary key-value pairs of a transaction
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete(id_user, id_connection, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete: #{e}"
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

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get**
> InlineResponse20027 users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get(id_user, id_connection, id_account, id_transaction, opts)

List all arbitrary key-value pairs on a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #List all arbitrary key-value pairs on a transaction
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get(id_user, id_connection, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get: #{e}"
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

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete**
> TransactionInformation users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete(id_user, id_connection, id_account, id_transaction, id_information, opts)

Delete a particular key-value pair on a transaction.



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_information = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a particular key-value pair on a transaction.
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete(id_user, id_connection, id_account, id_transaction, id_information, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_information** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get**
> TransactionInformation users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get(id_user, id_connection, id_account, id_transaction, id_information, opts)

Get a particular arbitrary key-value pair on a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_information = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get a particular arbitrary key-value pair on a transaction
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get(id_user, id_connection, id_account, id_transaction, id_information, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_information** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put**
> TransactionInformation users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put(id_user, id_connection, id_account, id_transaction, opts)

Add or edit transaction arbitrary key-value pairs



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Add or edit transaction arbitrary key-value pairs
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put(id_user, id_connection, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put: #{e}"
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

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put**
> Transaction users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put(id_user, id_connection, id_account, id_transaction, opts)

Edit a transaction meta-data



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  wording: "wording_example", # String | user rewording of the transaction
  application_date: Date.parse("2013-10-20"), # Date | change application date of the transaction
  id_category: 56, # Integer | ID of the associated category
  comment: "comment_example", # String | change comment
  active: true, # BOOLEAN | if false, transaction isn't considered in analyzisis endpoints (like /balances)
  expand: "expand_example" # String | 
}

begin
  #Edit a transaction meta-data
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put(id_user, id_connection, id_account, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **wording** | **String**| user rewording of the transaction | [optional] 
 **application_date** | **Date**| change application date of the transaction | [optional] 
 **id_category** | **Integer**| ID of the associated category | [optional] 
 **comment** | **String**| change comment | [optional] 
 **active** | **BOOLEAN**| if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances) | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_post**
> Transaction users_id_user_connections_id_connection_accounts_id_account_transactions_post(id_user, id_connection, id_account, original_wording, value, date, opts)

Create transactions

Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.<br><br><br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

original_wording = "original_wording_example" # String | label of the transaction

value = 56 # Integer | vallue of the transaction

date = Date.parse("2013-10-20") # Date | date of the transaction

opts = { 
  type: "type_example", # String | type of the transaction (default: unknown)
  state: "state_example", # String | nature of the transaction (default: new)
  rdate: Date.parse("2013-10-20"), # Date | realisation date of the transaction (default: value of date)
  coming: true, # BOOLEAN | 1 if the transaction has already been debited (default: 0)
  active: true, # BOOLEAN | 1 if the transaction should be taken into account by pfm services (default: 1)
  date_scraped: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
  id_account2: 56, # Integer | account of the transaction. If not supplied, it has to be given in the route
  expand: "expand_example" # String | 
}

begin
  #Create transactions
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactions_post(id_user, id_connection, id_account, original_wording, value, date, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **original_wording** | **String**| label of the transaction | 
 **value** | **Integer**| vallue of the transaction | 
 **date** | **Date**| date of the transaction | 
 **type** | **String**| type of the transaction (default: unknown) | [optional] 
 **state** | **String**| nature of the transaction (default: new) | [optional] 
 **rdate** | **Date**| realisation date of the transaction (default: value of date) | [optional] 
 **coming** | **BOOLEAN**| 1 if the transaction has already been debited (default: 0) | [optional] 
 **active** | **BOOLEAN**| 1 if the transaction should be taken into account by pfm services (default: 1) | [optional] 
 **date_scraped** | **DateTime**| date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now) | [optional] 
 **id_account2** | **Integer**| account of the transaction. If not supplied, it has to be given in the route | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get**
> InlineResponse20028 users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get(id_user, id_connection, id_account, opts)

Get clustered transactions



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get clustered transactions
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get: #{e}"
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

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete**
> TransactionsCluster users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete(id_user, id_connection, id_account, id_transactionscluster, opts)

Delete a clustered transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactionscluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a clustered transaction
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete(id_user, id_connection, id_account, id_transactionscluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transactionscluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put**
> TransactionsCluster users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put(id_user, id_connection, id_account, id_transactionscluster, opts)

Edit a clustered transaction

Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactionscluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Edit a clustered transaction
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put(id_user, id_connection, id_account, id_transactionscluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_account** | **Integer**|  | 
 **id_transactionscluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post**
> TransactionsCluster users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post(id_user, id_connection, id_account, opts)

Create clustered transaction

Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Create clustered transaction
  result = api_instance.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post(id_user, id_connection, id_account, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post: #{e}"
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

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_post**
> Account users_id_user_connections_id_connection_accounts_post(id_user, id_connection, name, balance, opts)

Create an account

This endpoint creates an account not related to a connection.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

name = "name_example" # String | name of account

balance = 3.4 # Float | balance of account

opts = { 
  number: "number_example", # String | number of account
  iban: "iban_example", # String | IBAN of account
  id_currency: "id_currency_example", # String | the currency of the account (default: 'EUR')
  expand: "expand_example" # String | 
}

begin
  #Create an account
  result = api_instance.users_id_user_connections_id_connection_accounts_post(id_user, id_connection, name, balance, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_accounts_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **name** | **String**| name of account | 
 **balance** | **Float**| balance of account | 
 **number** | **String**| number of account | [optional] 
 **iban** | **String**| IBAN of account | [optional] 
 **id_currency** | **String**| the currency of the account (default: &#39;EUR&#39;) | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Account**](Account.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_delete**
> Connection users_id_user_connections_id_connection_delete(id_user, id_connection, opts)

Delete a connection.

This endpoint deletes a connection and all related accounts and transactions.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a connection.
  result = api_instance.users_id_user_connections_id_connection_delete(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_informations_get**
> InlineResponse2008 users_id_user_connections_id_connection_informations_get(id_user, id_connection, opts)

Get connection additionnal informations

<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get connection additionnal informations
  result = api_instance.users_id_user_connections_id_connection_informations_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_informations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_logs_get**
> InlineResponse20015 users_id_user_connections_id_connection_logs_get(id_user, id_connection, opts)

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal date
  max_date: Date.parse("2013-10-20"), # Date | maximum date
  state: 56, # Integer | state of user
  period: "period_example", # String | period to group logs
  id_user2: 56, # Integer | ID of a user
  id_connection2: 56, # Integer | ID of a connection
  id_bank: 56, # Integer | ID of a bank
  charged: true, # BOOLEAN | consider only logs for charged banks
  expand: "expand_example" # String | 
}

begin
  #Get connection logs
  result = api_instance.users_id_user_connections_id_connection_logs_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **state** | **Integer**| state of user | [optional] 
 **period** | **String**| period to group logs | [optional] 
 **id_user2** | **Integer**| ID of a user | [optional] 
 **id_connection2** | **Integer**| ID of a connection | [optional] 
 **id_bank** | **Integer**| ID of a bank | [optional] 
 **charged** | **BOOLEAN**| consider only logs for charged banks | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_post**
> Connection users_id_user_connections_id_connection_post(id_user, id_connection, opts)

Update a connection.

Give new parameters to change on the configuration of this connection (for example \"password\").<br><br>It tests connection to website, and if it fails, a 400 response is given with the error code \"wrongpass\" or \"websiteUnavailable\".<br><br>You can also supply meta-parameters on connection, like 'active' or 'expire'.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  active: true, # BOOLEAN | Set if the connection synchronisation is active
  expire: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | Set expiration of the connection to this date
  login: "login_example", # String | Set login to this new login
  password: "password_example", # String | Set password to this new password
  expand: "expand_example" # String | 
}

begin
  #Update a connection.
  result = api_instance.users_id_user_connections_id_connection_post(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **active** | **BOOLEAN**| Set if the connection synchronisation is active | [optional] 
 **expire** | **DateTime**| Set expiration of the connection to this date | [optional] 
 **login** | **String**| Set login to this new login | [optional] 
 **password** | **String**| Set password to this new password | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_put**
> Connection users_id_user_connections_id_connection_put(id_user, id_connection, opts)

Force synchronisation of a connection.

We suggest to pass parameter expand=accounts[transactions] to get all *new* and *updated* transactions.<br><br>Query params: - expand (string): fields to expand - last_update (dateTime): if supplied, get transactions inserted since this date<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Force synchronisation of a connection.
  result = api_instance.users_id_user_connections_id_connection_put(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_delete**
> Transaction users_id_user_connections_id_connection_transactions_delete(id_user, id_connection, opts)

Delete transactions



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete transactions
  result = api_instance.users_id_user_connections_id_connection_transactions_delete(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactions_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_get**
> InlineResponse20025 users_id_user_connections_id_connection_transactions_get(id_user, id_connection, opts)

Get transactions

Get list of transactions.<br><br>By default, it selects transactions for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  income: true, # BOOLEAN | filter on income or expenditures
  deleted: true, # BOOLEAN | display only deleted transactions
  all: true, # BOOLEAN | display all transactions, including deleted ones
  last_update: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | get only transactions updated after the specified datetime
  wording: "wording_example", # String | filter transactions containing the given string
  min_value: 3.4, # Float | minimal (inclusive) value
  max_value: 3.4, # Float | maximum (inclusive) value
  search: "search_example", # String | search in labels, dates, values and categories
  value: "value_example", # String | \"XX|-XX\" or \"±XX\"
  expand: "expand_example" # String | 
}

begin
  #Get transactions
  result = api_instance.users_id_user_connections_id_connection_transactions_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactions_get: #{e}"
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
 **income** | **BOOLEAN**| filter on income or expenditures | [optional] 
 **deleted** | **BOOLEAN**| display only deleted transactions | [optional] 
 **all** | **BOOLEAN**| display all transactions, including deleted ones | [optional] 
 **last_update** | **DateTime**| get only transactions updated after the specified datetime | [optional] 
 **wording** | **String**| filter transactions containing the given string | [optional] 
 **min_value** | **Float**| minimal (inclusive) value | [optional] 
 **max_value** | **Float**| maximum (inclusive) value | [optional] 
 **search** | **String**| search in labels, dates, values and categories | [optional] 
 **value** | **String**| \&quot;XX|-XX\&quot; or \&quot;±XX\&quot; | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_informations_delete**
> TransactionInformation users_id_user_connections_id_connection_transactions_id_transaction_informations_delete(id_user, id_connection, id_transaction, opts)

Delete all arbitrary key-value pairs of a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete all arbitrary key-value pairs of a transaction
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_informations_delete(id_user, id_connection, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactions_id_transaction_informations_delete: #{e}"
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

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_informations_get**
> InlineResponse20027 users_id_user_connections_id_connection_transactions_id_transaction_informations_get(id_user, id_connection, id_transaction, opts)

List all arbitrary key-value pairs on a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #List all arbitrary key-value pairs on a transaction
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_informations_get(id_user, id_connection, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactions_id_transaction_informations_get: #{e}"
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

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete**
> TransactionInformation users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete(id_user, id_connection, id_transaction, id_information, opts)

Delete a particular key-value pair on a transaction.



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

id_information = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a particular key-value pair on a transaction.
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete(id_user, id_connection, id_transaction, id_information, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_information** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get**
> TransactionInformation users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get(id_user, id_connection, id_transaction, id_information, opts)

Get a particular arbitrary key-value pair on a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

id_information = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get a particular arbitrary key-value pair on a transaction
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get(id_user, id_connection, id_transaction, id_information, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **id_information** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_informations_put**
> TransactionInformation users_id_user_connections_id_connection_transactions_id_transaction_informations_put(id_user, id_connection, id_transaction, opts)

Add or edit transaction arbitrary key-value pairs



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Add or edit transaction arbitrary key-value pairs
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_informations_put(id_user, id_connection, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactions_id_transaction_informations_put: #{e}"
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

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_put**
> Transaction users_id_user_connections_id_connection_transactions_id_transaction_put(id_user, id_connection, id_transaction, opts)

Edit a transaction meta-data



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  wording: "wording_example", # String | user rewording of the transaction
  application_date: Date.parse("2013-10-20"), # Date | change application date of the transaction
  id_category: 56, # Integer | ID of the associated category
  comment: "comment_example", # String | change comment
  active: true, # BOOLEAN | if false, transaction isn't considered in analyzisis endpoints (like /balances)
  expand: "expand_example" # String | 
}

begin
  #Edit a transaction meta-data
  result = api_instance.users_id_user_connections_id_connection_transactions_id_transaction_put(id_user, id_connection, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactions_id_transaction_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transaction** | **Integer**|  | 
 **wording** | **String**| user rewording of the transaction | [optional] 
 **application_date** | **Date**| change application date of the transaction | [optional] 
 **id_category** | **Integer**| ID of the associated category | [optional] 
 **comment** | **String**| change comment | [optional] 
 **active** | **BOOLEAN**| if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances) | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_post**
> Transaction users_id_user_connections_id_connection_transactions_post(id_user, id_connection, original_wording, value, date, opts)

Create transactions

Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.<br><br><br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

original_wording = "original_wording_example" # String | label of the transaction

value = 56 # Integer | vallue of the transaction

date = Date.parse("2013-10-20") # Date | date of the transaction

opts = { 
  type: "type_example", # String | type of the transaction (default: unknown)
  state: "state_example", # String | nature of the transaction (default: new)
  rdate: Date.parse("2013-10-20"), # Date | realisation date of the transaction (default: value of date)
  coming: true, # BOOLEAN | 1 if the transaction has already been debited (default: 0)
  active: true, # BOOLEAN | 1 if the transaction should be taken into account by pfm services (default: 1)
  date_scraped: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
  id_account: 56, # Integer | account of the transaction. If not supplied, it has to be given in the route
  expand: "expand_example" # String | 
}

begin
  #Create transactions
  result = api_instance.users_id_user_connections_id_connection_transactions_post(id_user, id_connection, original_wording, value, date, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **original_wording** | **String**| label of the transaction | 
 **value** | **Integer**| vallue of the transaction | 
 **date** | **Date**| date of the transaction | 
 **type** | **String**| type of the transaction (default: unknown) | [optional] 
 **state** | **String**| nature of the transaction (default: new) | [optional] 
 **rdate** | **Date**| realisation date of the transaction (default: value of date) | [optional] 
 **coming** | **BOOLEAN**| 1 if the transaction has already been debited (default: 0) | [optional] 
 **active** | **BOOLEAN**| 1 if the transaction should be taken into account by pfm services (default: 1) | [optional] 
 **date_scraped** | **DateTime**| date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now) | [optional] 
 **id_account** | **Integer**| account of the transaction. If not supplied, it has to be given in the route | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactionsclusters_get**
> InlineResponse20028 users_id_user_connections_id_connection_transactionsclusters_get(id_user, id_connection, opts)

Get clustered transactions



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get clustered transactions
  result = api_instance.users_id_user_connections_id_connection_transactionsclusters_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactionsclusters_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete**
> TransactionsCluster users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete(id_user, id_connection, id_transactionscluster, opts)

Delete a clustered transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactionscluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a clustered transaction
  result = api_instance.users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete(id_user, id_connection, id_transactionscluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transactionscluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put**
> TransactionsCluster users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put(id_user, id_connection, id_transactionscluster, opts)

Edit a clustered transaction

Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactionscluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Edit a clustered transaction
  result = api_instance.users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put(id_user, id_connection, id_transactionscluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_transactionscluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactionsclusters_post**
> TransactionsCluster users_id_user_connections_id_connection_transactionsclusters_post(id_user, id_connection, opts)

Create clustered transaction

Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Create clustered transaction
  result = api_instance.users_id_user_connections_id_connection_transactionsclusters_post(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_id_connection_transactionsclusters_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_post**
> Connection users_id_user_connections_post(id_user, opts)

Add a new connection.

Create a new connection to a given bank or provider. You have to give all needed parameters (use /banks/ID/fields or /providers/ID/fields to get them).<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  id_bank: 56, # Integer | ID of the bank
  birthday: "birthday_example", # String | bank additional login parameter
  password: "password_example", # String | bank additional login parameter
  oauth_token: "oauth_token_example", # String | bank additional login parameter
  oauth_token_secret: "oauth_token_secret_example", # String | bank additional login parameter
  auth_type: "auth_type_example", # String | bank additional login parameter
  secret: "secret_example", # String | bank additional login parameter
  type: "type_example", # String | bank additional login parameter
  birthdate: "birthdate_example", # String | bank additional login parameter
  nuser: "nuser_example", # String | bank additional login parameter
  website: "website_example", # String | bank additional login parameter
  password2: "password_example", # String | bank additional login parameter
  login: "login_example", # String | bank additional login parameter
  id_provider: 56, # Integer | ID of the provider
  expand: "expand_example" # String | 
}

begin
  #Add a new connection.
  result = api_instance.users_id_user_connections_post(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_connections_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_bank** | **Integer**| ID of the bank | [optional] 
 **birthday** | **String**| bank additional login parameter | [optional] 
 **password** | **String**| bank additional login parameter | [optional] 
 **oauth_token** | **String**| bank additional login parameter | [optional] 
 **oauth_token_secret** | **String**| bank additional login parameter | [optional] 
 **auth_type** | **String**| bank additional login parameter | [optional] 
 **secret** | **String**| bank additional login parameter | [optional] 
 **type** | **String**| bank additional login parameter | [optional] 
 **birthdate** | **String**| bank additional login parameter | [optional] 
 **nuser** | **String**| bank additional login parameter | [optional] 
 **website** | **String**| bank additional login parameter | [optional] 
 **password2** | **String**| bank additional login parameter | [optional] 
 **login** | **String**| bank additional login parameter | [optional] 
 **id_provider** | **Integer**| ID of the provider | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_forecast_get**
> users_id_user_forecast_get(id_user)

Get forecast



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'


begin
  #Get forecast
  api_instance.users_id_user_forecast_get(id_user)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_forecast_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_logs_get**
> InlineResponse20015 users_id_user_logs_get(id_user, opts)

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal date
  max_date: Date.parse("2013-10-20"), # Date | maximum date
  state: 56, # Integer | state of user
  period: "period_example", # String | period to group logs
  id_user2: 56, # Integer | ID of a user
  id_connection: 56, # Integer | ID of a connection
  id_bank: 56, # Integer | ID of a bank
  charged: true, # BOOLEAN | consider only logs for charged banks
  expand: "expand_example" # String | 
}

begin
  #Get connection logs
  result = api_instance.users_id_user_logs_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **state** | **Integer**| state of user | [optional] 
 **period** | **String**| period to group logs | [optional] 
 **id_user2** | **Integer**| ID of a user | [optional] 
 **id_connection** | **Integer**| ID of a connection | [optional] 
 **id_bank** | **Integer**| ID of a bank | [optional] 
 **charged** | **BOOLEAN**| consider only logs for charged banks | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_delete**
> Transaction users_id_user_transactions_delete(id_user, opts)

Delete transactions



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete transactions
  result = api_instance.users_id_user_transactions_delete(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactions_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_get**
> InlineResponse20025 users_id_user_transactions_get(id_user, opts)

Get transactions

Get list of transactions.<br><br>By default, it selects transactions for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse("2013-10-20"), # Date | minimal (inclusive) date
  max_date: Date.parse("2013-10-20"), # Date | maximum (inclusive) date
  income: true, # BOOLEAN | filter on income or expenditures
  deleted: true, # BOOLEAN | display only deleted transactions
  all: true, # BOOLEAN | display all transactions, including deleted ones
  last_update: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | get only transactions updated after the specified datetime
  wording: "wording_example", # String | filter transactions containing the given string
  min_value: 3.4, # Float | minimal (inclusive) value
  max_value: 3.4, # Float | maximum (inclusive) value
  search: "search_example", # String | search in labels, dates, values and categories
  value: "value_example", # String | \"XX|-XX\" or \"±XX\"
  expand: "expand_example" # String | 
}

begin
  #Get transactions
  result = api_instance.users_id_user_transactions_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactions_get: #{e}"
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
 **income** | **BOOLEAN**| filter on income or expenditures | [optional] 
 **deleted** | **BOOLEAN**| display only deleted transactions | [optional] 
 **all** | **BOOLEAN**| display all transactions, including deleted ones | [optional] 
 **last_update** | **DateTime**| get only transactions updated after the specified datetime | [optional] 
 **wording** | **String**| filter transactions containing the given string | [optional] 
 **min_value** | **Float**| minimal (inclusive) value | [optional] 
 **max_value** | **Float**| maximum (inclusive) value | [optional] 
 **search** | **String**| search in labels, dates, values and categories | [optional] 
 **value** | **String**| \&quot;XX|-XX\&quot; or \&quot;±XX\&quot; | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20025**](InlineResponse20025.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_informations_delete**
> TransactionInformation users_id_user_transactions_id_transaction_informations_delete(id_user, id_transaction, opts)

Delete all arbitrary key-value pairs of a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete all arbitrary key-value pairs of a transaction
  result = api_instance.users_id_user_transactions_id_transaction_informations_delete(id_user, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactions_id_transaction_informations_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_informations_get**
> InlineResponse20027 users_id_user_transactions_id_transaction_informations_get(id_user, id_transaction, opts)

List all arbitrary key-value pairs on a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #List all arbitrary key-value pairs on a transaction
  result = api_instance.users_id_user_transactions_id_transaction_informations_get(id_user, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactions_id_transaction_informations_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20027**](InlineResponse20027.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_informations_id_information_delete**
> TransactionInformation users_id_user_transactions_id_transaction_informations_id_information_delete(id_user, id_transaction, id_information, opts)

Delete a particular key-value pair on a transaction.



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

id_information = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a particular key-value pair on a transaction.
  result = api_instance.users_id_user_transactions_id_transaction_informations_id_information_delete(id_user, id_transaction, id_information, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactions_id_transaction_informations_id_information_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **id_information** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_informations_id_information_get**
> TransactionInformation users_id_user_transactions_id_transaction_informations_id_information_get(id_user, id_transaction, id_information, opts)

Get a particular arbitrary key-value pair on a transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

id_information = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get a particular arbitrary key-value pair on a transaction
  result = api_instance.users_id_user_transactions_id_transaction_informations_id_information_get(id_user, id_transaction, id_information, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactions_id_transaction_informations_id_information_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **id_information** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_informations_put**
> TransactionInformation users_id_user_transactions_id_transaction_informations_put(id_user, id_transaction, opts)

Add or edit transaction arbitrary key-value pairs



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Add or edit transaction arbitrary key-value pairs
  result = api_instance.users_id_user_transactions_id_transaction_informations_put(id_user, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactions_id_transaction_informations_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionInformation**](TransactionInformation.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_put**
> Transaction users_id_user_transactions_id_transaction_put(id_user, id_transaction, opts)

Edit a transaction meta-data



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

opts = { 
  wording: "wording_example", # String | user rewording of the transaction
  application_date: Date.parse("2013-10-20"), # Date | change application date of the transaction
  id_category: 56, # Integer | ID of the associated category
  comment: "comment_example", # String | change comment
  active: true, # BOOLEAN | if false, transaction isn't considered in analyzisis endpoints (like /balances)
  expand: "expand_example" # String | 
}

begin
  #Edit a transaction meta-data
  result = api_instance.users_id_user_transactions_id_transaction_put(id_user, id_transaction, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactions_id_transaction_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transaction** | **Integer**|  | 
 **wording** | **String**| user rewording of the transaction | [optional] 
 **application_date** | **Date**| change application date of the transaction | [optional] 
 **id_category** | **Integer**| ID of the associated category | [optional] 
 **comment** | **String**| change comment | [optional] 
 **active** | **BOOLEAN**| if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances) | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_post**
> Transaction users_id_user_transactions_post(id_user, original_wording, value, date, opts)

Create transactions

Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.<br><br><br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

original_wording = "original_wording_example" # String | label of the transaction

value = 56 # Integer | vallue of the transaction

date = Date.parse("2013-10-20") # Date | date of the transaction

opts = { 
  type: "type_example", # String | type of the transaction (default: unknown)
  state: "state_example", # String | nature of the transaction (default: new)
  rdate: Date.parse("2013-10-20"), # Date | realisation date of the transaction (default: value of date)
  coming: true, # BOOLEAN | 1 if the transaction has already been debited (default: 0)
  active: true, # BOOLEAN | 1 if the transaction should be taken into account by pfm services (default: 1)
  date_scraped: DateTime.parse("2013-10-20T19:20:30+01:00"), # DateTime | date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
  id_account: 56, # Integer | account of the transaction. If not supplied, it has to be given in the route
  expand: "expand_example" # String | 
}

begin
  #Create transactions
  result = api_instance.users_id_user_transactions_post(id_user, original_wording, value, date, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactions_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **original_wording** | **String**| label of the transaction | 
 **value** | **Integer**| vallue of the transaction | 
 **date** | **Date**| date of the transaction | 
 **type** | **String**| type of the transaction (default: unknown) | [optional] 
 **state** | **String**| nature of the transaction (default: new) | [optional] 
 **rdate** | **Date**| realisation date of the transaction (default: value of date) | [optional] 
 **coming** | **BOOLEAN**| 1 if the transaction has already been debited (default: 0) | [optional] 
 **active** | **BOOLEAN**| 1 if the transaction should be taken into account by pfm services (default: 1) | [optional] 
 **date_scraped** | **DateTime**| date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now) | [optional] 
 **id_account** | **Integer**| account of the transaction. If not supplied, it has to be given in the route | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Transaction**](Transaction.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactionsclusters_get**
> InlineResponse20028 users_id_user_transactionsclusters_get(id_user, opts)

Get clustered transactions



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get clustered transactions
  result = api_instance.users_id_user_transactionsclusters_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactionsclusters_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20028**](InlineResponse20028.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactionsclusters_id_transactionscluster_delete**
> TransactionsCluster users_id_user_transactionsclusters_id_transactionscluster_delete(id_user, id_transactionscluster, opts)

Delete a clustered transaction



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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transactionscluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a clustered transaction
  result = api_instance.users_id_user_transactionsclusters_id_transactionscluster_delete(id_user, id_transactionscluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactionsclusters_id_transactionscluster_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transactionscluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactionsclusters_id_transactionscluster_put**
> TransactionsCluster users_id_user_transactionsclusters_id_transactionscluster_put(id_user, id_transactionscluster, opts)

Edit a clustered transaction

Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_transactionscluster = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Edit a clustered transaction
  result = api_instance.users_id_user_transactionsclusters_id_transactionscluster_put(id_user, id_transactionscluster, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactionsclusters_id_transactionscluster_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_transactionscluster** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactionsclusters_post**
> TransactionsCluster users_id_user_transactionsclusters_post(id_user, opts)

Create clustered transaction

Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account<br><br>

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

api_instance = BudgeaClient::BanksApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Create clustered transaction
  result = api_instance.users_id_user_transactionsclusters_post(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling BanksApi->users_id_user_transactionsclusters_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**TransactionsCluster**](TransactionsCluster.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



