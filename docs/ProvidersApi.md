# BudgeaClient::ProvidersApi

All URIs are relative to *https://demo.biapi.pro/2.0/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**banks_get**](ProvidersApi.md#banks_get) | **GET** /banks | Get list of connectors
[**banks_id_connector_logos_get**](ProvidersApi.md#banks_id_connector_logos_get) | **GET** /banks/{id_connector}/logos | Get all links to the files associated with this connector.
[**banks_id_connector_logos_main_get**](ProvidersApi.md#banks_id_connector_logos_main_get) | **GET** /banks/{id_connector}/logos/main | Get all links to the files associated with this connector.
[**banks_id_connector_logos_thumbnail_get**](ProvidersApi.md#banks_id_connector_logos_thumbnail_get) | **GET** /banks/{id_connector}/logos/thumbnail | Get all links to the files associated with this connector.
[**banks_id_connector_sources_get**](ProvidersApi.md#banks_id_connector_sources_get) | **GET** /banks/{id_connector}/sources | Get list of connector sources
[**connections_get**](ProvidersApi.md#connections_get) | **GET** /connections | Get connections without a user
[**connections_id_connection_logs_get**](ProvidersApi.md#connections_id_connection_logs_get) | **GET** /connections/{id_connection}/logs | Get connection logs
[**connectors_get**](ProvidersApi.md#connectors_get) | **GET** /connectors | Get list of connectors
[**connectors_id_connector_logos_get**](ProvidersApi.md#connectors_id_connector_logos_get) | **GET** /connectors/{id_connector}/logos | Get all links to the files associated with this connector.
[**connectors_id_connector_logos_id_logo_delete**](ProvidersApi.md#connectors_id_connector_logos_id_logo_delete) | **DELETE** /connectors/{id_connector}/logos/{id_logo} | Delete a single Logo object.
[**connectors_id_connector_logos_id_logo_put**](ProvidersApi.md#connectors_id_connector_logos_id_logo_put) | **PUT** /connectors/{id_connector}/logos/{id_logo} | Create or Update a connector Logo.
[**connectors_id_connector_logos_main_get**](ProvidersApi.md#connectors_id_connector_logos_main_get) | **GET** /connectors/{id_connector}/logos/main | Get all links to the files associated with this connector.
[**connectors_id_connector_logos_post**](ProvidersApi.md#connectors_id_connector_logos_post) | **POST** /connectors/{id_connector}/logos | Create a connector Logo
[**connectors_id_connector_logos_put**](ProvidersApi.md#connectors_id_connector_logos_put) | **PUT** /connectors/{id_connector}/logos | Create or Update a connector Logo
[**connectors_id_connector_logos_thumbnail_get**](ProvidersApi.md#connectors_id_connector_logos_thumbnail_get) | **GET** /connectors/{id_connector}/logos/thumbnail | Get all links to the files associated with this connector.
[**connectors_id_connector_sources_get**](ProvidersApi.md#connectors_id_connector_sources_get) | **GET** /connectors/{id_connector}/sources | Get list of connector sources
[**connectors_id_connector_sources_id_source_put**](ProvidersApi.md#connectors_id_connector_sources_id_source_put) | **PUT** /connectors/{id_connector}/sources/{id_source} | Edit the provided connector source
[**connectors_post**](ProvidersApi.md#connectors_post) | **POST** /connectors | Request a new connector
[**documenttypes_get**](ProvidersApi.md#documenttypes_get) | **GET** /documenttypes | Get document types
[**documenttypes_id_documenttype_put**](ProvidersApi.md#documenttypes_id_documenttype_put) | **PUT** /documenttypes/{id_documenttype} | Edit a document type
[**logs_get**](ProvidersApi.md#logs_get) | **GET** /logs | Get connection logs
[**ocr_post**](ProvidersApi.md#ocr_post) | **POST** /ocr | Post an image with OCR
[**providers_get**](ProvidersApi.md#providers_get) | **GET** /providers | Get list of connectors
[**providers_id_connector_logos_get**](ProvidersApi.md#providers_id_connector_logos_get) | **GET** /providers/{id_connector}/logos | Get all links to the files associated with this connector.
[**providers_id_connector_logos_main_get**](ProvidersApi.md#providers_id_connector_logos_main_get) | **GET** /providers/{id_connector}/logos/main | Get all links to the files associated with this connector.
[**providers_id_connector_logos_thumbnail_get**](ProvidersApi.md#providers_id_connector_logos_thumbnail_get) | **GET** /providers/{id_connector}/logos/thumbnail | Get all links to the files associated with this connector.
[**providers_id_connector_sources_get**](ProvidersApi.md#providers_id_connector_sources_get) | **GET** /providers/{id_connector}/sources | Get list of connector sources
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
[**users_id_user_connections_id_connection_get**](ProvidersApi.md#users_id_user_connections_id_connection_get) | **GET** /users/{id_user}/connections/{id_connection} | Get connection
[**users_id_user_connections_id_connection_informations_get**](ProvidersApi.md#users_id_user_connections_id_connection_informations_get) | **GET** /users/{id_user}/connections/{id_connection}/informations | Get connection additionnal informations
[**users_id_user_connections_id_connection_logs_get**](ProvidersApi.md#users_id_user_connections_id_connection_logs_get) | **GET** /users/{id_user}/connections/{id_connection}/logs | Get connection logs
[**users_id_user_connections_id_connection_post**](ProvidersApi.md#users_id_user_connections_id_connection_post) | **POST** /users/{id_user}/connections/{id_connection} | Update a connection.
[**users_id_user_connections_id_connection_put**](ProvidersApi.md#users_id_user_connections_id_connection_put) | **PUT** /users/{id_user}/connections/{id_connection} | Force synchronisation of a connection.
[**users_id_user_connections_id_connection_sources_get**](ProvidersApi.md#users_id_user_connections_id_connection_sources_get) | **GET** /users/{id_user}/connections/{id_connection}/sources | Get connection sources
[**users_id_user_connections_id_connection_sources_id_source_delete**](ProvidersApi.md#users_id_user_connections_id_connection_sources_id_source_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/sources/{id_source} | Disable a connection source
[**users_id_user_connections_id_connection_sources_id_source_post**](ProvidersApi.md#users_id_user_connections_id_connection_sources_id_source_post) | **POST** /users/{id_user}/connections/{id_connection}/sources/{id_source} | Enable connection source
[**users_id_user_connections_id_connection_sources_id_source_put**](ProvidersApi.md#users_id_user_connections_id_connection_sources_id_source_put) | **PUT** /users/{id_user}/connections/{id_connection}/sources/{id_source} | Enable connection source
[**users_id_user_connections_id_connection_subscriptions_id_subscription_delete**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription} | Delete a subscription.
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Delete documents
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get) | **GET** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Get documents
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete) | **DELETE** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document} | Delete a document
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document} | Edit a document
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post) | **POST** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Add a new document
[**users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents | Attach an existing document to a transaction or a transactions_cluster
[**users_id_user_connections_id_connection_subscriptions_id_subscription_logs_get**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_logs_get) | **GET** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/logs | Get subscriptions logs.
[**users_id_user_connections_id_connection_subscriptions_id_subscription_put**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_id_subscription_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription} | Update a subscription
[**users_id_user_connections_id_connection_subscriptions_put**](ProvidersApi.md#users_id_user_connections_id_connection_subscriptions_put) | **PUT** /users/{id_user}/connections/{id_connection}/subscriptions | Update many subscriptions at once
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
[**users_id_user_subscriptions_id_subscription_logs_get**](ProvidersApi.md#users_id_user_subscriptions_id_subscription_logs_get) | **GET** /users/{id_user}/subscriptions/{id_subscription}/logs | Get subscriptions logs.
[**users_id_user_subscriptions_id_subscription_put**](ProvidersApi.md#users_id_user_subscriptions_id_subscription_put) | **PUT** /users/{id_user}/subscriptions/{id_subscription} | Update a subscription
[**users_id_user_subscriptions_put**](ProvidersApi.md#users_id_user_subscriptions_put) | **PUT** /users/{id_user}/subscriptions | Update many subscriptions at once
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
> InlineResponse2008 banks_get(opts)

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

api_instance = BudgeaClient::ProvidersApi.new

opts = { 
  expand: 'expand_example' # String | 
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

[**InlineResponse2008**](InlineResponse2008.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_id_connector_logos_get**
> InlineResponse20010 banks_id_connector_logos_get(id_connector, opts)

Get all links to the files associated with this connector.

This endpoint returns all links to files associated with this connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get all links to the files associated with this connector.
  result = api_instance.banks_id_connector_logos_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->banks_id_connector_logos_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_id_connector_logos_main_get**
> InlineResponse20010 banks_id_connector_logos_main_get(id_connector, opts)

Get all links to the files associated with this connector.

This endpoint returns all links to files associated with this connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get all links to the files associated with this connector.
  result = api_instance.banks_id_connector_logos_main_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->banks_id_connector_logos_main_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_id_connector_logos_thumbnail_get**
> InlineResponse20010 banks_id_connector_logos_thumbnail_get(id_connector, opts)

Get all links to the files associated with this connector.

This endpoint returns all links to files associated with this connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get all links to the files associated with this connector.
  result = api_instance.banks_id_connector_logos_thumbnail_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->banks_id_connector_logos_thumbnail_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **banks_id_connector_sources_get**
> InlineResponse20011 banks_id_connector_sources_get(id_connector, opts)

Get list of connector sources



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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get list of connector sources
  result = api_instance.banks_id_connector_sources_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->banks_id_connector_sources_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connections_get**
> InlineResponse2009 connections_get(opts)

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

api_instance = BudgeaClient::ProvidersApi.new

opts = { 
  expand: 'expand_example' # String | 
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

[**InlineResponse2009**](InlineResponse2009.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connections_id_connection_logs_get**
> InlineResponse20015 connections_id_connection_logs_get(id_connection, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_connection = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  state: 56, # Integer | state of user
  period: 'period_example', # String | period to group logs
  id_user: 56, # Integer | ID of a user
  id_connection2: 56, # Integer | ID of a connection
  id_connector: 56, # Integer | ID of a connector
  charged: true, # BOOLEAN | consider only logs for charged connectors
  id_source: 56, # Integer | ID of a source
  expand: 'expand_example' # String | 
}

begin
  #Get connection logs
  result = api_instance.connections_id_connection_logs_get(id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connections_id_connection_logs_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connection** | **Integer**|  | 
 **limit** | **Integer**| limit number of results | [optional] 
 **offset** | **Integer**| offset of first result | [optional] 
 **min_date** | **Date**| minimal date | [optional] 
 **max_date** | **Date**| maximum date | [optional] 
 **state** | **Integer**| state of user | [optional] 
 **period** | **String**| period to group logs | [optional] 
 **id_user** | **Integer**| ID of a user | [optional] 
 **id_connection2** | **Integer**| ID of a connection | [optional] 
 **id_connector** | **Integer**| ID of a connector | [optional] 
 **charged** | **BOOLEAN**| consider only logs for charged connectors | [optional] 
 **id_source** | **Integer**| ID of a source | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_get**
> InlineResponse20016 connectors_get(opts)

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

api_instance = BudgeaClient::ProvidersApi.new

opts = { 
  expand: 'expand_example' # String | 
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

[**InlineResponse20016**](InlineResponse20016.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_connector_logos_get**
> InlineResponse20010 connectors_id_connector_logos_get(id_connector, opts)

Get all links to the files associated with this connector.

This endpoint returns all links to files associated with this connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get all links to the files associated with this connector.
  result = api_instance.connectors_id_connector_logos_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_connector_logos_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_connector_logos_id_logo_delete**
> ConnectorLogo connectors_id_connector_logos_id_logo_delete(id_connector, id_logo, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

id_logo = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Delete a single Logo object.
  result = api_instance.connectors_id_connector_logos_id_logo_delete(id_connector, id_logo, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_connector_logos_id_logo_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **id_logo** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectorLogo**](ConnectorLogo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_connector_logos_id_logo_put**
> ConnectorLogo connectors_id_connector_logos_id_logo_put(id_connector, id_logo, opts)

Create or Update a connector Logo.

This endpoint creates or update a connector logo. This logo is a mapping between a file (/file route) and a connector (/connectors route) or a provider (/providers route).<br><br>Form params: - id_file (integer): The id of the file to link with that connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

id_logo = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Create or Update a connector Logo.
  result = api_instance.connectors_id_connector_logos_id_logo_put(id_connector, id_logo, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_connector_logos_id_logo_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **id_logo** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectorLogo**](ConnectorLogo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_connector_logos_main_get**
> InlineResponse20010 connectors_id_connector_logos_main_get(id_connector, opts)

Get all links to the files associated with this connector.

This endpoint returns all links to files associated with this connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get all links to the files associated with this connector.
  result = api_instance.connectors_id_connector_logos_main_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_connector_logos_main_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_connector_logos_post**
> ConnectorLogo connectors_id_connector_logos_post(id_connector, opts)

Create a connector Logo

This endpoint creates a connector logo. You can either pass a file to as a parameter to insert and link it with the connector or pass an id_file to link a connector with an existing file. Will fail if the file is already linked with that connector.<br><br>Form params: - id_file (integer): The id of the file to link with that connector. - img (string): Path to the image to link with that connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Create a connector Logo
  result = api_instance.connectors_id_connector_logos_post(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_connector_logos_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectorLogo**](ConnectorLogo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_connector_logos_put**
> ConnectorLogo connectors_id_connector_logos_put(id_connector, opts)

Create or Update a connector Logo

This endpoint creates or update a connector logo. This logo is a mapping between a file (/file route) and a connector (/connectors route) or a provider (/providers route).<br><br>Form params: - id_file (integer): The id of the file to link with that connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Create or Update a connector Logo
  result = api_instance.connectors_id_connector_logos_put(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_connector_logos_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectorLogo**](ConnectorLogo.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_connector_logos_thumbnail_get**
> InlineResponse20010 connectors_id_connector_logos_thumbnail_get(id_connector, opts)

Get all links to the files associated with this connector.

This endpoint returns all links to files associated with this connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get all links to the files associated with this connector.
  result = api_instance.connectors_id_connector_logos_thumbnail_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_connector_logos_thumbnail_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_connector_sources_get**
> InlineResponse20011 connectors_id_connector_sources_get(id_connector, opts)

Get list of connector sources



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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get list of connector sources
  result = api_instance.connectors_id_connector_sources_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_connector_sources_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_id_connector_sources_id_source_put**
> ConnectorSource connectors_id_connector_sources_id_source_put(id_connector, id_source, opts)

Edit the provided connector source



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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

id_source = 56 # Integer | 

opts = { 
  auth_mechanism: 'auth_mechanism_example', # String | the authentication mechanism to use for this connector source
  disabled: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | to enable or disable connector source
  expand: 'expand_example' # String | 
}

begin
  #Edit the provided connector source
  result = api_instance.connectors_id_connector_sources_id_source_put(id_connector, id_source, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->connectors_id_connector_sources_id_source_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **id_source** | **Integer**|  | 
 **auth_mechanism** | **String**| the authentication mechanism to use for this connector source | [optional] 
 **disabled** | **DateTime**| to enable or disable connector source | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectorSource**](ConnectorSource.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **connectors_post**
> Connector connectors_post(name, login, password, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

name = 'name_example' # String | Name of the bank or provider

login = 'login_example' # String | Users login

password = 'password_example' # String | Users password

opts = { 
  url: 'url_example', # String | Url of the bank
  email: 'email_example', # String | Email of the user
  types: 'types_example', # String | Type of connector, eg. banks or providers
  comment: 'comment_example', # String | Optionnal comment
  sendmail: true, # BOOLEAN | if set, send an email to user
  expand: 'expand_example' # String | 
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
 **url** | **String**| Url of the bank | [optional] 
 **email** | **String**| Email of the user | [optional] 
 **types** | **String**| Type of connector, eg. banks or providers | [optional] 
 **comment** | **String**| Optionnal comment | [optional] 
 **sendmail** | **BOOLEAN**| if set, send an email to user | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Connector**](Connector.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **documenttypes_get**
> InlineResponse20017 documenttypes_get(opts)

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

api_instance = BudgeaClient::ProvidersApi.new

opts = { 
  expand: 'expand_example' # String | 
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

[**InlineResponse20017**](InlineResponse20017.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_documenttype = 56 # Integer | 

name = 'name_example' # String | Displayed name of document type

attacheable = 56 # Integer | If true, documents of this type can be attached to a transaction, and have amount related meta-data

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  state: 56, # Integer | state of user
  period: 'period_example', # String | period to group logs
  id_user: 56, # Integer | ID of a user
  id_connection: 56, # Integer | ID of a connection
  id_connector: 56, # Integer | ID of a connector
  charged: true, # BOOLEAN | consider only logs for charged connectors
  id_source: 56, # Integer | ID of a source
  expand: 'expand_example' # String | 
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
 **id_connector** | **Integer**| ID of a connector | [optional] 
 **charged** | **BOOLEAN**| consider only logs for charged connectors | [optional] 
 **id_source** | **Integer**| ID of a source | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

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

api_instance = BudgeaClient::ProvidersApi.new

file = File.new('/path/to/file.txt') # File | File of the document

opts = { 
  id_transaction: 56, # Integer | Transaction used to help OCR to find data
  name: 'name_example' # String | Name of the document
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **providers_get**
> InlineResponse20019 providers_get(opts)

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

api_instance = BudgeaClient::ProvidersApi.new

opts = { 
  expand: 'expand_example' # String | 
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

[**InlineResponse20019**](InlineResponse20019.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **providers_id_connector_logos_get**
> InlineResponse20010 providers_id_connector_logos_get(id_connector, opts)

Get all links to the files associated with this connector.

This endpoint returns all links to files associated with this connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get all links to the files associated with this connector.
  result = api_instance.providers_id_connector_logos_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_id_connector_logos_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **providers_id_connector_logos_main_get**
> InlineResponse20010 providers_id_connector_logos_main_get(id_connector, opts)

Get all links to the files associated with this connector.

This endpoint returns all links to files associated with this connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get all links to the files associated with this connector.
  result = api_instance.providers_id_connector_logos_main_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_id_connector_logos_main_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **providers_id_connector_logos_thumbnail_get**
> InlineResponse20010 providers_id_connector_logos_thumbnail_get(id_connector, opts)

Get all links to the files associated with this connector.

This endpoint returns all links to files associated with this connector.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get all links to the files associated with this connector.
  result = api_instance.providers_id_connector_logos_thumbnail_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_id_connector_logos_thumbnail_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20010**](InlineResponse20010.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **providers_id_connector_sources_get**
> InlineResponse20011 providers_id_connector_sources_get(id_connector, opts)

Get list of connector sources



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

api_instance = BudgeaClient::ProvidersApi.new

id_connector = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get list of connector sources
  result = api_instance.providers_id_connector_sources_get(id_connector, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->providers_id_connector_sources_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_connector** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20011**](InlineResponse20011.md)

### Authorization

[api_key](../README.md#api_key)

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
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactions_id_transaction_documents_get**
> InlineResponse20032 users_id_user_accounts_id_account_transactions_id_transaction_documents_get(id_user, id_account, id_transaction, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**
> InlineResponse20032 users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_account, id_transactions_cluster, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_get**
> InlineResponse2009 users_id_user_connections_get(id_user, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
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

[**InlineResponse2009**](InlineResponse2009.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get**
> InlineResponse20032 users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get(id_user, id_connection, id_account, id_transaction, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get**
> InlineResponse20032 users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_connection, id_account, id_transactions_cluster, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_account = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

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
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_documents_get**
> InlineResponse20032 users_id_user_connections_id_connection_documents_get(id_user, id_connection, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_get**
> Connection users_id_user_connections_id_connection_get(id_user, id_connection, opts)

Get connection

Get connection by ID

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get connection
  result = api_instance.users_id_user_connections_id_connection_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_get: #{e}"
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
> InlineResponse2009 users_id_user_connections_id_connection_informations_get(id_user, id_connection, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[**InlineResponse2009**](InlineResponse2009.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  state: 56, # Integer | state of user
  period: 'period_example', # String | period to group logs
  id_user2: 56, # Integer | ID of a user
  id_connection2: 56, # Integer | ID of a connection
  id_connector: 56, # Integer | ID of a connector
  charged: true, # BOOLEAN | consider only logs for charged connectors
  id_source: 56, # Integer | ID of a source
  expand: 'expand_example' # String | 
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
 **id_connector** | **Integer**| ID of a connector | [optional] 
 **charged** | **BOOLEAN**| consider only logs for charged connectors | [optional] 
 **id_source** | **Integer**| ID of a source | [optional] 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  active: true, # BOOLEAN | Set if the connection synchronisation is active
  expire: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Set expiration of the connection to this date
  login: 'login_example', # String | Set login to this new login
  password: 'password_example', # String | Set password to this new password
  decoupled: true, # BOOLEAN | Try to update a connection with the decoupled error
  expand: 'expand_example' # String | 
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
 **decoupled** | **BOOLEAN**| Try to update a connection with the decoupled error | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_sources_get**
> InlineResponse20030 users_id_user_connections_id_connection_sources_get(id_user, id_connection, opts)

Get connection sources



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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Get connection sources
  result = api_instance.users_id_user_connections_id_connection_sources_get(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_sources_get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20030**](InlineResponse20030.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_sources_id_source_delete**
> ConnectionSource users_id_user_connections_id_connection_sources_id_source_delete(id_user, id_connection, id_source, opts)

Disable a connection source

This will make it so the specified source will not be synchronized anymore.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_source = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Disable a connection source
  result = api_instance.users_id_user_connections_id_connection_sources_id_source_delete(id_user, id_connection, id_source, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_sources_id_source_delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_source** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectionSource**](ConnectionSource.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_sources_id_source_post**
> ConnectionSource users_id_user_connections_id_connection_sources_id_source_post(id_user, id_connection, id_source, opts)

Enable connection source

This will make it so the specified source will be able to be synchronized.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_source = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Enable connection source
  result = api_instance.users_id_user_connections_id_connection_sources_id_source_post(id_user, id_connection, id_source, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_sources_id_source_post: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_source** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectionSource**](ConnectionSource.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_sources_id_source_put**
> ConnectionSource users_id_user_connections_id_connection_sources_id_source_put(id_user, id_connection, id_source, opts)

Enable connection source

This will make it so the specified source will be able to be synchronized.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_source = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Enable connection source
  result = api_instance.users_id_user_connections_id_connection_sources_id_source_put(id_user, id_connection, id_source, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_sources_id_source_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **id_source** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**ConnectionSource**](ConnectionSource.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_id_subscription_delete**
> Subscription users_id_user_connections_id_connection_subscriptions_id_subscription_delete(id_user, id_connection, id_subscription, opts)

Delete a subscription.

It deletes a specific subscription.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get**
> InlineResponse20032 users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get(id_user, id_connection, id_subscription, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_id_subscription_logs_get**
> InlineResponse20037 users_id_user_connections_id_connection_subscriptions_id_subscription_logs_get(id_user, id_connection, id_subscription, opts)

Get subscriptions logs.

Get logs of subscription.<br><br>By default, it selects logs for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  expand: 'expand_example' # String | 
}

begin
  #Get subscriptions logs.
  result = api_instance.users_id_user_connections_id_connection_subscriptions_id_subscription_logs_get(id_user, id_connection, id_subscription, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_subscriptions_id_subscription_logs_get: #{e}"
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
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[api_key](../README.md#api_key)

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
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_subscription = 56 # Integer | 

opts = { 
  name: 'name_example', # String | Label of the subscription
  disabled: true, # BOOLEAN | If the subscription is disabled (not synchronized)
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_subscriptions_put**
> Subscription users_id_user_connections_id_connection_subscriptions_put(id_user, id_connection, opts)

Update many subscriptions at once



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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Update many subscriptions at once
  result = api_instance.users_id_user_connections_id_connection_subscriptions_put(id_user, id_connection, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_connections_id_connection_subscriptions_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **id_connection** | **Integer**|  | 
 **expand** | **String**|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactions_id_transaction_documents_get**
> InlineResponse20032 users_id_user_connections_id_connection_transactions_id_transaction_documents_get(id_user, id_connection, id_transaction, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transaction = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get**
> InlineResponse20032 users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_connection, id_transactions_cluster, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_connection = 56 # Integer | 

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  source: 'source_example', # String | optional comma-separated list of sources to use for the connection synchronization
  id_connector: 56, # Integer | ID of the connector
  connector_uuid: 'connector_uuid_example', # String | optional uuid of the connector (replaces id_connector)
  birthday: 'birthday_example', # String | bank additional login parameter
  password: 'password_example', # String | bank additional login parameter
  oauth_token: 'oauth_token_example', # String | bank additional login parameter
  oauth_token_secret: 'oauth_token_secret_example', # String | bank additional login parameter
  auth_type: 'auth_type_example', # String | bank additional login parameter
  secret: 'secret_example', # String | bank additional login parameter
  type: 'type_example', # String | bank additional login parameter
  birthdate: 'birthdate_example', # String | bank additional login parameter
  nuser: 'nuser_example', # String | bank additional login parameter
  website: 'website_example', # String | bank additional login parameter
  openapiwebsite: 'openapiwebsite_example', # String | bank additional login parameter
  website2: 'website_example', # String | bank additional login parameter
  login: 'login_example', # String | bank additional login parameter
  id_provider: 56, # Integer | ID of the provider
  expand: 'expand_example' # String | 
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
 **source** | **String**| optional comma-separated list of sources to use for the connection synchronization | [optional] 
 **id_connector** | **Integer**| ID of the connector | [optional] 
 **connector_uuid** | **String**| optional uuid of the connector (replaces id_connector) | [optional] 
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
 **openapiwebsite** | **String**| bank additional login parameter | [optional] 
 **website2** | **String**| bank additional login parameter | [optional] 
 **login** | **String**| bank additional login parameter | [optional] 
 **id_provider** | **Integer**| ID of the provider | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**Connection**](Connection.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_documents_get**
> InlineResponse20032 users_id_user_documents_get(id_user, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal date
  max_date: Date.parse('2013-10-20'), # Date | maximum date
  state: 56, # Integer | state of user
  period: 'period_example', # String | period to group logs
  id_user2: 56, # Integer | ID of a user
  id_connection: 56, # Integer | ID of a connection
  id_connector: 56, # Integer | ID of a connector
  charged: true, # BOOLEAN | consider only logs for charged connectors
  id_source: 56, # Integer | ID of a source
  expand: 'expand_example' # String | 
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
 **id_connector** | **Integer**| ID of a connector | [optional] 
 **charged** | **BOOLEAN**| consider only logs for charged connectors | [optional] 
 **id_source** | **Integer**| ID of a source | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20015**](InlineResponse20015.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

file = File.new('/path/to/file.txt') # File | File of the document

opts = { 
  id_transaction: 56, # Integer | Transaction used to help OCR to find data
  name: 'name_example' # String | Name of the document
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_delete**
> Subscription users_id_user_subscriptions_id_subscription_delete(id_user, id_subscription, opts)

Delete a subscription.

It deletes a specific subscription.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

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
# setup authorization
BudgeaClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Authorization'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Authorization'] = 'Bearer'
end

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_documents_get**
> InlineResponse20032 users_id_user_subscriptions_id_subscription_documents_get(id_user, id_subscription, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_logs_get**
> InlineResponse20037 users_id_user_subscriptions_id_subscription_logs_get(id_user, id_subscription, opts)

Get subscriptions logs.

Get logs of subscription.<br><br>By default, it selects logs for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  expand: 'expand_example' # String | 
}

begin
  #Get subscriptions logs.
  result = api_instance.users_id_user_subscriptions_id_subscription_logs_get(id_user, id_subscription, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_subscriptions_id_subscription_logs_get: #{e}"
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
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20037**](InlineResponse20037.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_subscriptions_id_subscription_put**
> Subscription users_id_user_subscriptions_id_subscription_put(id_user, id_subscription, opts)

Update a subscription

It updates a specific subscription<br><br>

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_subscription = 56 # Integer | 

opts = { 
  name: 'name_example', # String | Label of the subscription
  disabled: true, # BOOLEAN | If the subscription is disabled (not synchronized)
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



# **users_id_user_subscriptions_put**
> Subscription users_id_user_subscriptions_put(id_user, opts)

Update many subscriptions at once



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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

opts = { 
  expand: 'expand_example' # String | 
}

begin
  #Update many subscriptions at once
  result = api_instance.users_id_user_subscriptions_put(id_user, opts)
  p result
rescue BudgeaClient::ApiError => e
  puts "Exception when calling ProvidersApi->users_id_user_subscriptions_put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id_user** | **String**| Hint: you can use &#39;me&#39; or &#39;all&#39; | 
 **expand** | **String**|  | [optional] 

### Return type

[**Subscription**](Subscription.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactions_id_transaction_documents_get**
> InlineResponse20032 users_id_user_transactions_id_transaction_documents_get(id_user, id_transaction, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transaction = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json



# **users_id_user_transactionsclusters_id_transactions_cluster_documents_get**
> InlineResponse20032 users_id_user_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_transactions_cluster, opts)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

opts = { 
  limit: 56, # Integer | limit number of results
  offset: 56, # Integer | offset of first result
  min_date: Date.parse('2013-10-20'), # Date | minimal (inclusive) date
  max_date: Date.parse('2013-10-20'), # Date | maximum (inclusive) date
  min_amount: 3.4, # Float | minimal (inclusive) amount
  max_amount: 3.4, # Float | maximum (inclusive) amount
  min_timestamp: 3.4, # Float | minimal (inclusive) timestamp
  max_timestamp: 3.4, # Float | maximum (inclusive) timestamp
  id_type: 56, # Integer | filter with a document type
  expand: 'expand_example' # String | 
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
 **max_amount** | **Float**| maximum (inclusive) amount | [optional] 
 **min_timestamp** | **Float**| minimal (inclusive) timestamp | [optional] 
 **max_timestamp** | **Float**| maximum (inclusive) timestamp | [optional] 
 **id_type** | **Integer**| filter with a document type | [optional] 
 **expand** | **String**|  | [optional] 

### Return type

[**InlineResponse20032**](InlineResponse20032.md)

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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | 

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  date: Date.parse('2013-10-20'), # Date | Date of document
  duedate: Date.parse('2013-10-20'), # Date | Due date of document
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: 56, # Integer | Is an income or an outcome
  readonly: 56, # Integer | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

date = Date.parse('2013-10-20') # Date | Date of document

duedate = Date.parse('2013-10-20') # Date | Due date of document

opts = { 
  id_type: 56, # Integer | Type of this document
  id_category: 56, # Integer | Related category
  total_amount: 3.4, # Float | Taxed amount
  untaxed_amount: 3.4, # Float | Untaxed amount
  vat: 3.4, # Float | VAT amount
  income: true, # BOOLEAN | Is an income or an outcome
  readonly: true, # BOOLEAN | Is this file readonly
  file: File.new('/path/to/file.txt'), # File | File of the document
  id_ocr: 56, # Integer | Related OCR process
  name: 'name_example', # String | Name of the document
  expand: 'expand_example' # String | 
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

api_instance = BudgeaClient::ProvidersApi.new

id_user = 'id_user_example' # String | Hint: you can use 'me' or 'all'

id_transactions_cluster = 56 # Integer | 

id_document = 56 # Integer | id of the document you want to attach the file to

opts = { 
  expand: 'expand_example' # String | 
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

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: application/x-www-form-urlencoded
 - **Accept**: application/json



