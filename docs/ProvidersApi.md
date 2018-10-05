# BudgeaClient::ProvidersApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**banks_get**](ProvidersApi.md#banks_get) | **GET** /banks | Get list of connectors
[**banks_id_bank_logos_get**](ProvidersApi.md#banks_id_bank_logos_get) | **GET** /banks/{id_bank}/logos | Get all links to the files associated with this bank.
[**banks_id_bank_logos_main_get**](ProvidersApi.md#banks_id_bank_logos_main_get) | **GET** /banks/{id_bank}/logos/main | Get all links to the files associated with this bank.
[**banks_id_bank_logos_thumbnail_get**](ProvidersApi.md#banks_id_bank_logos_thumbnail_get) | **GET** /banks/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
[**connections_get**](ProvidersApi.md#connections_get) | **GET** /connections | Get connections without a user
[**connectors_get**](ProvidersApi.md#connectors_get) | **GET** /connectors | Get list of connectors
[**connectors_id_bank_logos_get**](ProvidersApi.md#connectors_id_bank_logos_get) | **GET** /connectors/{id_bank}/logos | Get all links to the files associated with this bank.
[**connectors_id_bank_logos_id_logo_delete**](ProvidersApi.md#connectors_id_bank_logos_id_logo_delete) | **DELETE** /connectors/{id_bank}/logos/{id_logo} | Delete a single Logo object.
[**connectors_id_bank_logos_id_logo_put**](ProvidersApi.md#connectors_id_bank_logos_id_logo_put) | **PUT** /connectors/{id_bank}/logos/{id_logo} | Create or Update a Bank Logo.
[**connectors_id_bank_logos_main_get**](ProvidersApi.md#connectors_id_bank_logos_main_get) | **GET** /connectors/{id_bank}/logos/main | Get all links to the files associated with this bank.
[**connectors_id_bank_logos_post**](ProvidersApi.md#connectors_id_bank_logos_post) | **POST** /connectors/{id_bank}/logos | Create a Bank Logo
[**connectors_id_bank_logos_put**](ProvidersApi.md#connectors_id_bank_logos_put) | **PUT** /connectors/{id_bank}/logos | Create or Update a Bank Logo
[**connectors_id_bank_logos_thumbnail_get**](ProvidersApi.md#connectors_id_bank_logos_thumbnail_get) | **GET** /connectors/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
[**connectors_post**](ProvidersApi.md#connectors_post) | **POST** /connectors | Request a new connector
[**documenttypes_get**](ProvidersApi.md#documenttypes_get) | **GET** /documenttypes | Get document types
[**documenttypes_id_documenttype_put**](ProvidersApi.md#documenttypes_id_documenttype_put) | **PUT** /documenttypes/{id_documenttype} | Edit a document type
[**logs_get**](ProvidersApi.md#logs_get) | **GET** /logs | Get connection logs
[**ocr_post**](ProvidersApi.md#ocr_post) | **POST** /ocr | Post an image with OCR
[**providers_get**](ProvidersApi.md#providers_get) | **GET** /providers | Get list of connectors
[**providers_id_bank_logos_get**](ProvidersApi.md#providers_id_bank_logos_get) | **GET** /providers/{id_bank}/logos | Get all links to the files associated with this bank.
[**providers_id_bank_logos_main_get**](ProvidersApi.md#providers_id_bank_logos_main_get) | **GET** /providers/{id_bank}/logos/main | Get all links to the files associated with this bank.
[**providers_id_bank_logos_thumbnail_get**](ProvidersApi.md#providers_id_bank_logos_thumbnail_get) | **GET** /providers/{id_bank}/logos/thumbnail | Get all links to the files associated with this bank.
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_delete**](ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Delete documents
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_get**](ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Get documents
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete**](ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Delete a document
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put**](ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Edit a document
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_post**](ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Add a new document
[**users_id_user_accounts_id_account_transactions_id_transaction_documents_put**](ProvidersApi.md#users_id_user_accounts_id_account_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete**](ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**](ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put**](ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post**](ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
[**users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put**](ProvidersApi.md#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_delete**](ProvidersApi.md#users_id_user_connections_delete) | **DELETE** /users/{id_user}/connections | Delete all connections
[**users_id_user_connections_get**](ProvidersApi.md#users_id_user_connections_get) | **GET** /users/{id_user}/connections | Get connections
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Delete documents
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Get documents
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Add a new document
[**users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
[**users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put**](ProvidersApi.md#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_delete**](ProvidersApi.md#users_id_user_connections_id_connection_delete) | **DELETE** /users/{id_user}/connections/{id_connection} | Delete a connection.
[**users_id_user_connections_id_connection_documents_delete**](ProvidersApi.md#users_id_user_connections_id_connection_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/documents | Delete documents
[**users_id_user_connections_id_connection_documents_get**](ProvidersApi.md#users_id_user_connections_id_connection_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/documents | Get documents
[**users_id_user_connections_id_connection_documents_id_document_delete**](ProvidersApi.md#users_id_user_connections_id_connection_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_documents_id_document_put**](ProvidersApi.md#users_id_user_connections_id_connection_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_documents_post**](ProvidersApi.md#users_id_user_connections_id_connection_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/documents | Add a new document
[**users_id_user_connections_id_connection_documents_put**](ProvidersApi.md#users_id_user_connections_id_connection_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_informations_get**](ProvidersApi.md#users_id_user_connections_id_connection_informations_get) | **GET** /users/{id_user}/connections/{id_connection}/informations | Get connection additionnal informations
[**users_id_user_connections_id_connection_logs_get**](ProvidersApi.md#users_id_user_connections_id_connection_logs_get) | **GET** /users/{id_user}/connections/{id_connection}/logs | Get connection logs
[**users_id_user_connections_id_connection_post**](ProvidersApi.md#users_id_user_connections_id_connection_post) | **POST** /users/{id_user}/connections/{id_connection} | Update a connection.
[**users_id_user_connections_id_connection_put**](ProvidersApi.md#users_id_user_connections_id_connection_put) | **PUT** /users/{id_user}/connections/{id_connection} | Force synchronisation of a connection.
[**users_id_user_connections_id_connection_subscriptions_id_subscription_delete**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription} | Delete a subscription.
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Delete documents
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Get documents
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Add a new document
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_subscriptions_id_subscription_put**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription} | Update a subscription
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_delete**](ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Delete documents
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_get**](ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Get documents
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete**](ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put**](ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_post**](ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Add a new document
[**users_id_user_connections_id_connection_transactions_id_transaction_documents_put**](ProvidersApi.md#users_id_user_connections_id_connection_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete**](ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get**](ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put**](ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post**](ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
[**users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put**](ProvidersApi.md#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_post**](ProvidersApi.md#users_id_user_connections_post) | **POST** /users/{id_user}/connections | Add a new connection.
[**users_id_user_documents_delete**](ProvidersApi.md#users_id_user_documents_delete) | **DELETE** /users/{id_user}/documents | Delete documents
[**users_id_user_documents_get**](ProvidersApi.md#users_id_user_documents_get) | **GET** /users/{id_user}/documents | Get documents
[**users_id_user_documents_id_document_delete**](ProvidersApi.md#users_id_user_documents_id_document_delete) | **DELETE** /users/{id_user}/documents/{id_document} | Delete a document
[**users_id_user_documents_id_document_put**](ProvidersApi.md#users_id_user_documents_id_document_put) | **PUT** /users/{id_user}/documents/{id_document} | Edit a document
[**users_id_user_documents_post**](ProvidersApi.md#users_id_user_documents_post) | **POST** /users/{id_user}/documents | Add a new document
[**users_id_user_documents_put**](ProvidersApi.md#users_id_user_documents_put) | **PUT** /users/{id_user}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_logs_get**](ProvidersApi.md#users_id_user_logs_get) | **GET** /users/{id_user}/logs | Get connection logs
[**users_id_user_ocr_post**](ProvidersApi.md#users_id_user_ocr_post) | **POST** /users/{id_user}/ocr | Post an image with OCR
[**users_id_user_subscriptions_id_subscription_delete**](ProvidersApi.md#users_id_user_subscriptions_id_subscription_delete) | **DELETE** /users/{id_user}/subscriptions/{id_subscription} | Delete a subscription.
[**users_id_user_subscriptions_id_subscription_documents_delete**](ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_delete) | **DELETE** /users/{id_user}/subscriptions/{id_subscription}/documents | Delete documents
[**users_id_user_subscriptions_id_subscription_documents_get**](ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_get) | **GET** /users/{id_user}/subscriptions/{id_subscription}/documents | Get documents
[**users_id_user_subscriptions_id_subscription_documents_id_document_delete**](ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_id_document_delete) | **DELETE** /users/{id_user}/subscriptions/{id_subscription}/documents/{id_document} | Delete a document
[**users_id_user_subscriptions_id_subscription_documents_id_document_put**](ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_id_document_put) | **PUT** /users/{id_user}/subscriptions/{id_subscription}/documents/{id_document} | Edit a document
[**users_id_user_subscriptions_id_subscription_documents_post**](ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_post) | **POST** /users/{id_user}/subscriptions/{id_subscription}/documents | Add a new document
[**users_id_user_subscriptions_id_subscription_documents_put**](ProvidersApi.md#users_id_user_subscriptions_id_subscription_documents_put) | **PUT** /users/{id_user}/subscriptions/{id_subscription}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_subscriptions_id_subscription_put**](ProvidersApi.md#users_id_user_subscriptions_id_subscription_put) | **PUT** /users/{id_user}/subscriptions/{id_subscription} | Update a subscription
[**users_id_user_transactions_id_transaction_documents_delete**](ProvidersApi.md#users_id_user_transactions_id_transaction_documents_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/documents | Delete documents
[**users_id_user_transactions_id_transaction_documents_get**](ProvidersApi.md#users_id_user_transactions_id_transaction_documents_get) | **GET** /users/{id_user}/transactions/{id_transaction}/documents | Get documents
[**users_id_user_transactions_id_transaction_documents_id_document_delete**](ProvidersApi.md#users_id_user_transactions_id_transaction_documents_id_document_delete) | **DELETE** /users/{id_user}/transactions/{id_transaction}/documents/{id_document} | Delete a document
[**users_id_user_transactions_id_transaction_documents_id_document_put**](ProvidersApi.md#users_id_user_transactions_id_transaction_documents_id_document_put) | **PUT** /users/{id_user}/transactions/{id_transaction}/documents/{id_document} | Edit a document
[**users_id_user_transactions_id_transaction_documents_post**](ProvidersApi.md#users_id_user_transactions_id_transaction_documents_post) | **POST** /users/{id_user}/transactions/{id_transaction}/documents | Add a new document
[**users_id_user_transactions_id_transaction_documents_put**](ProvidersApi.md#users_id_user_transactions_id_transaction_documents_put) | **PUT** /users/{id_user}/transactions/{id_transaction}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_delete**](ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_delete) | **DELETE** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Delete documents
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_get**](ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_get) | **GET** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Get documents
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete**](ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete) | **DELETE** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Delete a document
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put**](ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put) | **PUT** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents/{id_document} | Edit a document
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_post**](ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_post) | **POST** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Add a new document
[**users_id_user_transactionsclusters_id_transactions_cluster_documents_put**](ProvidersApi.md#users_id_user_transactionsclusters_id_transactions_cluster_documents_put) | **PUT** /users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents | Attach an existing document to a transaction or a transactions_cluster


# **banks_get**
> InlineResponse2007 banks_get(opts)

Get list of connectors



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::ProvidersApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get list of connectors
  result = api_instance.banks_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->banks_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.banks_id_bank_logos_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->banks_id_bank_logos_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.banks_id_bank_logos_main_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->banks_id_bank_logos_main_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.banks_id_bank_logos_thumbnail_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->banks_id_bank_logos_thumbnail_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get connections without a user
  result = api_instance.connections_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connections_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get list of connectors
  result = api_instance.connectors_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20012**](InlineResponse20012.md)

### Authorization

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.connectors_id_bank_logos_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_bank_logos_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->connectors_id_bank_logos_id_logo_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->connectors_id_bank_logos_id_logo_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.connectors_id_bank_logos_main_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_bank_logos_main_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Create a Bank Logo
  result = api_instance.connectors_id_bank_logos_post(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_bank_logos_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Create or Update a Bank Logo
  result = api_instance.connectors_id_bank_logos_put(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_bank_logos_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.connectors_id_bank_logos_thumbnail_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_bank_logos_thumbnail_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->connectors_post: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **documenttypes_get**
> InlineResponse20013 documenttypes_get(opts)

Get document types



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::ProvidersApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get document types
  result = api_instance.documenttypes_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->documenttypes_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20013**](InlineResponse20013.md)

### Authorization

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->documenttypes_id_documenttype_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->logs_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

file = File.new("/path/to/file.txt") # File | File of the document

opts = { 
  id_transaction: 56, # Integer | Transaction used to help OCR to find data
  name: "name_example" # String | Name of the document
}

begin
  #Post an image with OCR
  api_instance.ocr_post(file, opts)
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->ocr_post: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **providers_get**
> InlineResponse2007 providers_get(opts)

Get list of connectors



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::ProvidersApi.new

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get list of connectors
  result = api_instance.providers_get(opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse2007**](InlineResponse2007.md)

### Authorization

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.providers_id_bank_logos_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_id_bank_logos_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.providers_id_bank_logos_main_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_id_bank_logos_main_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_bank = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get all links to the files associated with this bank.
  result = api_instance.providers_id_bank_logos_thumbnail_get(id_bank, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_id_bank_logos_thumbnail_get: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_documents_delete**
> Document users_id_user_accounts_id_account_transactions_id_transaction_documents_delete(id_user, id_account, id_transaction, opts)

Delete documents



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactions_id_transaction_documents_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete all connections
  result = api_instance.users_id_user_connections_delete(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Get connections
  result = api_instance.users_id_user_connections_get(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_delete: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_documents_delete**
> Document users_id_user_connections_id_connection_documents_delete(id_user, id_connection, opts)

Delete documents



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_documents_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_informations_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_logs_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_post: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_put**
> Connection users_id_user_connections_id_connection_put(id_user, id_connection, opts)

Force synchronisation of a connection.

We suggest to pass parameter expand=accounts[transactions] to get all *new* and *updated* transactions.<br><br>Query params: - expand (string): fields to expand - last_update (dateTime): if supplied, get transactions inserted since this date<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_put: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_id_subscription_delete**
> Subscription users_id_user_connections_id_connection_subscriptions_id_subscription_delete(id_user, id_connection, id_subscription, opts)

Delete a subscription.

It deletes a specific subscription If this is the last synced subscription of a connection, it will be removed too.<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::ProvidersApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a subscription.
  result = api_instance.users_id_user_connections_id_connection_subscriptions_id_subscription_delete(id_user, id_connection, id_subscription, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_subscriptions_id_subscription_delete: #{e}"
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

[**Subscription**](Subscription.md)

### Authorization

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_id_subscription_put**
> Subscription users_id_user_connections_id_connection_subscriptions_id_subscription_put(id_user, id_connection, id_subscription, opts)

Update a subscription

It updates a specific subscription<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::ProvidersApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

opts = { 
  name: "name_example", # String | Label of the subscription
  disabled: true, # BOOLEAN | If the subscription is disabled (not synchronized)
  expand: "expand_example" # String | 
}

begin
  #Update a subscription
  result = api_instance.users_id_user_connections_id_connection_subscriptions_id_subscription_put(id_user, id_connection, id_subscription, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_subscriptions_id_subscription_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_subscription** | **Integer**|  | 
 **name** | **String**| Label of the subscription | [optional] 
 **disabled** | **BOOLEAN**| If the subscription is disabled (not synchronized) | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactions_id_transaction_documents_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  id_bank: 56, # Integer | ID of the bank
  id_provider: 56, # Integer | ID of the provider
  expand: "expand_example" # String | 
}

begin
  #Add a new connection.
  result = api_instance.users_id_user_connections_post(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_bank** | **Integer**| ID of the bank | [optional] 
 **id_provider** | **Integer**| ID of the provider | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete documents
  result = api_instance.users_id_user_documents_delete(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_documents_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_logs_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_ocr_post: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_delete**
> Subscription users_id_user_subscriptions_id_subscription_delete(id_user, id_subscription, opts)

Delete a subscription.

It deletes a specific subscription If this is the last synced subscription of a connection, it will be removed too.<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::ProvidersApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

opts = { 
  expand: "expand_example" # String | 
}

begin
  #Delete a subscription.
  result = api_instance.users_id_user_subscriptions_id_subscription_delete(id_user, id_subscription, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_subscriptions_id_subscription_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_subscription** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_documents_delete**
> Document users_id_user_subscriptions_id_subscription_documents_delete(id_user, id_subscription, opts)

Delete documents



### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_subscriptions_id_subscription_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_subscriptions_id_subscription_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_subscriptions_id_subscription_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_subscriptions_id_subscription_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_subscriptions_id_subscription_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_subscriptions_id_subscription_documents_put: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_put**
> Subscription users_id_user_subscriptions_id_subscription_put(id_user, id_subscription, opts)

Update a subscription

It updates a specific subscription<br><br>

### Example
```ruby
# load the gem
require 'budgea_client'

api_instance = BudgeaClient::ProvidersApi.new

id_user = "id_user_example" # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

opts = { 
  name: "name_example", # String | Label of the subscription
  disabled: true, # BOOLEAN | If the subscription is disabled (not synchronized)
  expand: "expand_example" # String | 
}

begin
  #Update a subscription
  result = api_instance.users_id_user_subscriptions_id_subscription_put(id_user, id_subscription, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_subscriptions_id_subscription_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_subscription** | **Integer**|  | 
 **name** | **String**| Label of the subscription | [optional] 
 **disabled** | **BOOLEAN**| If the subscription is disabled (not synchronized) | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactions_id_transaction_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactions_id_transaction_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactions_id_transaction_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactions_id_transaction_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactions_id_transaction_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactions_id_transaction_documents_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_get: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_post: #{e}"
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

No authorization required

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

api_instance = BudgeaClient::ProvidersApi.new

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
  puts "Exception when calling ProvidersApi->users_id_user_transactionsclusters_id_transactions_cluster_documents_put: #{e}"
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

No authorization required

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



