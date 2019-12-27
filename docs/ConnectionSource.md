# BudgeaClient::ConnectionSource

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of connection | 
**id_connection** | **Integer** | ID of the related connection | 
**id_connector_source** | **Integer** | ID of the related connector source | 
**name** | **String** | Name of the connection source | 
**last_update** | **DateTime** | Last successful update | [optional] 
**disabled** | **DateTime** | This source is not used to synchronize the connection | [optional] 
**created** | **DateTime** | Creation date of the connection source | 
**state** | **String** | If the last update has failed, the state code | [optional] 
**access_expire** | **DateTime** | Expiration date of the access | [optional] 
**expire** | **DateTime** | Expiration of the connection source. Used to purge the connection in case completion was not finished | [optional] 
**next_try** | **DateTime** | Date of next synchronization | [optional] 


