# BudgeaClient::Account

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the account | 
**id_connection** | **Integer** | ID of the related connection | [optional] 
**id_user** | **Integer** | ID of the related user | [optional] 
**id_source** | **Integer** | ID of the related connection source | [optional] 
**id_parent** | **Integer** | Id of the parent account | [optional] 
**number** | **String** | Account number | [optional] 
**webid** | **String** | Account webid | [optional] 
**original_name** | **String** | Original name of the account on the bank | 
**balance** | **Float** | Balance of the account | 
**coming** | **Float** | Amount of coming operations not yet debited | [optional] [default to 0.0]
**display** | **BOOLEAN** | Display this account in accounts list | [default to true]
**last_update** | **DateTime** | Last successful update of the account | [optional] 
**deleted** | **DateTime** | This account is not found on the website anymore | [optional] 
**disabled** | **DateTime** | This account has been deleted by user and will not be synchronized anymore | [optional] 
**iban** | **String** | Account IBAN | [optional] 
**bic** | **String** | Account BIC/SWIFT | [optional] 
**currency** | [**Currency**](Currency.md) | Account currency | [optional] 
**id_type** | **Integer** | ID of the account type | [optional] 
**bookmarked** | **Integer** | This account has been bookmarked by user | 
**name** | **String** | Name of the account | [optional] 
**recipients** | [**Array&lt;Recipient&gt;**](Recipient.md) |  | [optional] 
**transactions** | [**Array&lt;Transaction&gt;**](Transaction.md) |  | [optional] 
**transfers** | [**Array&lt;Transfer&gt;**](Transfer.md) |  | [optional] 
**error** | **String** | If the last update has failed, the error code | [optional] 
**usage** | **String** | Account usage | [optional] 
**ownership** | **String** | Relationship between the credentials owner and the account | [optional] 
**company_name** | **String** | Name of the company holding the employee savings of the account | [optional] 


