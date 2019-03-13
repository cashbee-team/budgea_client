# BudgeaClient::TransferLog

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the transfer log entry | 
**id_transfer** | **Integer** | ID of the related transfer | [optional] 
**id_file** | **Integer** | ID of the related file | [optional] 
**request_data** | **String** | Data stored related to user who has requested the transfer | [optional] 
**state** | **String** | State of the transfer (created, scheduled, validating, pending, done, canceled, error, bug) | [optional] 
**error** | **String** | Error message during transfer, if any | [optional] 
**timestamp** | **DateTime** | Timestamp of the log | 


