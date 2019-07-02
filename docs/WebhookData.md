# BudgeaClient::WebhookData

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the webhook data | 
**id_webhook** | **Integer** | ID of the webhook | 
**id_service** | **Integer** | ID of the recipient service | [optional] 
**id_user** | **Integer** | ID of the emitter user | 
**id_resource** | **Integer** | a changing ID used to filter webhookdata depending on the event triggered | [optional] 
**data** | **String** | Data emitted | [optional] 
**mimetype** | **String** | Mimetype of the data | [optional] 
**created** | **DateTime** | Timestamp when the hook data was generated | 
**success** | **DateTime** | Timestamp when the hook has been successfully called | [optional] 


