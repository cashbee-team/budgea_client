# BudgeaClient::WebhookLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the log | 
**id_webhook_data** | **Integer** | ID of the webhook data | [optional] 
**id_service** | **Integer** | ID of the service | [optional] 
**id_user** | **Integer** | ID of the user | [optional] 
**timestamp** | **DateTime** | Timestamp when the hook was sent | 
**response_date** | **DateTime** | Timestamp of the reply to the hook | [optional] 
**response_code** | **Integer** | Return code of the reply to the hook | [optional] 
**next_try** | **DateTime** | If the log is an error, do not retry to push before this timestamp | [optional] 


