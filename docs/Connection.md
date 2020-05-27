# BudgeaClient::Connection

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of connection | 
**id_user** | **Integer** | ID of the related user | [optional] 
**id_connector** | **Integer** | ID of the related connector | 
**last_update** | **DateTime** | Last successful update | [optional] 
**created** | **DateTime** | Creation date | [optional] 
**error** | **String** | If the last update has failed, the error code | [optional] 
**error_message** | **String** | If fail, error message received from connector | [optional] 
**expire** | **DateTime** | Expiration of the connection. Used during add of a two-factor authentication, to purge the connection if the user abort | [optional] 
**active** | **BOOLEAN** | This connection is active and will be automatically synced | [default to true]
**last_push** | **DateTime** | Last successful push | [optional] 
**state** | **String** | State of Connection | [optional] 
**fields** | [**Array&lt;Field&gt;**](Field.md) |  | [optional] 
**next_try** | **DateTime** | Date of next synchronization | [optional] 
**accounts** | [**Array&lt;Account&gt;**](Account.md) |  | [optional] 
**subscriptions** | [**Array&lt;Subscription&gt;**](Subscription.md) |  | [optional] 
**connection** | [**Connection**](Connection.md) |  | [optional] 
**message** | **String** |  | [optional] 


