# BudgeaClient::Recipient

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the recipient | 
**id_account** | **Integer** | ID of the related account | 
**id_target_account** | **Integer** | ID of the target account, in case of internal recipient | [optional] 
**label** | **String** | Label of the recipient | 
**bank_name** | **String** | Bank of the recipient | [optional] 
**iban** | **String** | IBAN of the recipient | [optional] 
**webid** | **String** | Webid of the recipient | [optional] 
**category** | **String** | Category in which the recipient is | 
**last_update** | **DateTime** | Last time we have fetched this recipient | 
**time_scraped** | **DateTime** | First time we&#39;ve seen this recipient | [optional] 
**deleted** | **DateTime** | The recipient isn&#39;t found anymore on the bank | [optional] 
**expire** | **DateTime** |  | [optional] 
**enabled_at** | **DateTime** | It will be possible to do transfers to this recipient at this date | [optional] 
**add_verified** | **BOOLEAN** | Was the recipient adding authorized | [optional] 
**currency** | **Object** | Currency of the object | [optional] 


