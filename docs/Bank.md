# BudgeaClient::Bank

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the connector | 
**name** | **String** | Name of the bank or provider | 
**id_weboob** | **String** |  | 
**hidden** | **BOOLEAN** | This connector is hidden from your users | [optional] [default to false]
**charged** | **BOOLEAN** | Usage of this connector is charged | [default to true]
**code** | **String** | Bank code | [optional] 
**beta** | **BOOLEAN** | If true, this connector is perhaps unstable :) | [default to false]
**color** | **String** | Main color of the bank or provider | [optional] 
**slug** | **String** |  | [optional] 
**sync_frequency** | **Float** | How many days to wait between syncs | [optional] 
**months_to_fetch** | **Integer** | How many months of history to fetch | [optional] 


