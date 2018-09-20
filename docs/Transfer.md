# BudgeaClient::Transfer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of transfer | 
**id_account** | **Integer** | ID of the debited account | [optional] 
**id_recipient** | **Integer** | ID of the recipient | [optional] 
**account_iban** | **String** | IBAN of the debited account | [optional] 
**recipient_iban** | **String** | IBAN of the recipient | [optional] 
**exec_date** | **Date** | Date when the transfer will be operated by the bank | 
**register_date** | **DateTime** | Date when the transfer has been registered | 
**amount** | **Float** | Amount of the transfer | 
**fees** | **Float** | Fees taken by the bank | [optional] 
**webid** | **String** | WebID of the transfer | [optional] 
**state** | **String** | State of the transfer (created, scheduled, validating, pending, done, canceled, error, bug) | 
**error** | **String** | Error message during transfer, if any | [optional] 
**label** | **String** | Label of the transfer | [optional] 
**account_balance** | **Float** | Balance of the account just before the transfer | [optional] 
**id_transaction** | **Integer** | If found, ID of the related transaction | [optional] 
**currency** | **Object** | Currency of the object | [optional] 


