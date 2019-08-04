# BudgeaClient::ConnectionLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the log | 
**id_user** | **Integer** | ID of the user | [optional] 
**id_connection** | **Integer** | ID of the connection | 
**id_connector** | **Integer** | ID of the connector | [optional] 
**login** | **String** | bcrypt hash of the login | [optional] 
**error_uid** | **String** | MD5 hash of the exception backtrace | [optional] 
**timestamp** | **DateTime** | Timestamp of log, when the synchronization has finished | 
**next_try** | **DateTime** | If fail, the date represents the next try to connect | [optional] 
**error** | **String** | If fail, contains the error code | [optional] 
**error_message** | **String** | If fail, error message received from connector | [optional] 
**statut** | **Integer** | Status of user (1 &#x3D; charged user) | [optional] 
**nb_accounts** | **Integer** | In case of bank connection, number of accounts | [optional] 
**start** | **DateTime** | Timestamp when the synchronization has started | [optional] 
**worker** | **String** | Worker used to do synchronization | [optional] 
**session_folder_id** | **String** | Session folder uid | [optional] 
**fields** | **String** | Fields for connection in additionalInformationNeeded state with background option | [optional] 


