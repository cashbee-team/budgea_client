# BudgeaClient::RecipientLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the transfer log entry | 
**id_recipient** | **Integer** | ID of the related recipient | [optional] 
**id_file** | **Integer** | ID of the related file | [optional] 
**request_data** | **String** | Data stored related to user who has requested the recipient addition | [optional] 
**step** | **String** | Step of recipient addition, (add_recipient, asking_field, recipient addition validated, creation, storing_files) | [optional] 
**error** | **String** | Error message during recipient addition, if any | [optional] 
**timestamp** | **DateTime** | Timestamp of the log | 
**fields** | **String** | Fields for recipient in additionalInformationNeeded state with background option | [optional] 


