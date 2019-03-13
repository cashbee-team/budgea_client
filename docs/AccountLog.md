# BudgeaClient::AccountLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id_account** | **Integer** | ID of the related account | 
**id_connector** | **Integer** | provider id | [optional] 
**balance** | **Float** | Balanced recorded | 
**coming** | **Float** | Coming debit recorded | [optional] [default to 0.0]
**timestamp** | **DateTime** | Timestamp of log | 
**error** | **String** | If fail, contains the error code | [optional] 
**error_message** | **String** | If fail, error message received from bank or provider | [optional] 
**id_connection_log** | **Integer** | ID of the related connection log | [optional] 


