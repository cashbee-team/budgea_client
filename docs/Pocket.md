# BudgeaClient::Pocket

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the pocket | 
**id_account** | **Integer** | ID of the related account | 
**id_investment** | **Integer** | ID of the related investment | 
**label** | **String** | Label of the pocket | [optional] 
**value** | **Float** | Value of the pocket | 
**quantity** | **Float** | Quantity of stocks | [optional] [default to 0.0]
**availability_date** | **Date** | Availability date of the pocket | [optional] 
**condition** | **String** | Withdrawal condition of the pocket | [default to &quot;inconnu&quot;]
**last_update** | **DateTime** | Last update of the pocket | [optional] 
**deleted** | **DateTime** | If set, this pocket has been removed from the website | [optional] 


