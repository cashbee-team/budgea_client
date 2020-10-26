# BudgeaClient::Payment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** |  | 
**state** | **String** | State of the payment | [optional] 
**error_code** | **String** | In case of error, the error code | [optional] 
**error_description** | **String** | Error message | [optional] 
**register_date** | **DateTime** | Date of payment registration | [optional] 
**validate_uri** | **String** | URL to validate payment | [optional] 
**client_redirect_uri** | **String** | URL to redirecting to client | [optional] 
**id_connector** | **Integer** | ID of the related connector source | [optional] 
**instructions** | [**Array&lt;PaymentInstruction&gt;**](PaymentInstruction.md) |  | [optional] 


