# BudgeaClient::Connection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of connection | 
**id_user** | **Integer** | ID of the related user | [optional] 
**id_bank** | **Integer** | ID of the related bank or provider | 
**last_update** | **DateTime** | Last successful update | [optional] 
**error** | **String** | If the last update has failed, the error code | [optional] 
**expire** | **DateTime** | Expiration of the connection. Used during add of a two-factor authentication, to purge the connection if the user abort | [optional] 
**active** | **BOOLEAN** | This connection is active and will be automatically synced | [default to true]
**last_push** | **DateTime** | Last successful push | [optional] 
**next_try** | **DateTime** | Date of next synchronization | [optional] 


