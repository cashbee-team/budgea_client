# BudgeaClient::Transaction

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the transaction | 
**id_account** | **Integer** | ID of the related account | 
**webid** | **String** | Webid of the transaction | [optional] 
**application_date** | **Date** | Date considered by PFM services. It is used to change the month of a transaction, for example. | [optional] 
**date** | **Date** | Debit date | 
**value** | **Float** | Value of the transaction | [optional] 
**gross_value** | **Float** | Gross value of the transaction | [optional] 
**nature** | **String** | Type of transaction | [default to &#39;inconnu&#39;]
**original_wording** | **String** | Full label of the transaction | 
**simplified_wording** | **String** | Simplified label of the transaction | 
**stemmed_wording** | **String** | Do not use it | 
**wording** | **String** | Label set by the user | [optional] 
**id_category** | **Integer** | ID of the related category | [optional] 
**state** | **String** | Internal state of the transaction | [default to &#39;new&#39;]
**date_scraped** | **DateTime** | Date when the transaction has been seen | 
**rdate** | **Date** | Realization of the transaction | 
**vdate** | **Date** | Value date of the transaction | [optional] 
**bdate** | **Date** | Date used by the bank for the transaction | [optional] 
**coming** | **BOOLEAN** | If true, this transaction hasn&#39;t been yet debited | 
**active** | **BOOLEAN** | If false, PFM services will ignore this transaction | [default to true]
**id_cluster** | **Integer** | If the transaction is part of a cluster | [optional] 
**comment** | **String** | User comment | [optional] 
**last_update** | **DateTime** | Last update of the transaction | [optional] 
**deleted** | **DateTime** | If set, this transaction has been removed from the bank | [optional] 
**original_value** | **Float** | Value in the original currency | [optional] 
**original_currency** | **Object** | Original currency | [optional] 
**commission** | **Float** | Commission taken on the transaction | [optional] 
**commission_currency** | **Object** | Commission currency | [optional] 
**country** | **String** | Original country | [optional] 
**counterparty** | **String** | Counterparty | [optional] 
**card** | **String** | Card number associated to the transaction | [optional] 


