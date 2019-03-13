# BudgeaClient::Subscription

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of subscription | 
**id_connection** | **Integer** | ID of related connection | [optional] 
**id_user** | **Integer** | ID of related user | [optional] 
**number** | **String** | Subscription&#39;s number | 
**label** | **String** | Label of the subscription | 
**subscriber** | **String** | Name of the subscriber | [optional] 
**validity** | **Date** | The subscription is valid until this date, if any | [optional] 
**renewdate** | **Date** | Next renew date, if any | [optional] 
**last_update** | **DateTime** | Last successful update of the subscription | [optional] 
**deleted** | **DateTime** | This subscription is not found on the website anymore | [optional] 
**disabled** | **DateTime** | This subscription has been deleted by user and will not be synchronized anymore | [optional] 
**error** | **String** | If the last update has failed, the error code | [optional] 


