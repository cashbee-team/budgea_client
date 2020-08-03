# BudgeaClient::Transfer

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of transfer | 
**id_account** | **Integer** | ID of the debited account | [optional] 
**id_user** | **Integer** | ID of the related user | [optional] 
**id_recipient** | **Integer** | ID of the recipient | [optional] 
**account_iban** | **String** | IBAN of the debited account | [optional] 
**recipient_iban** | **String** | IBAN of the recipient in bank recipient list | [optional] 
**exec_date** | **Date** | Date when the transfer will be operated by the bank | 
**register_date** | **DateTime** | Date when the transfer has been registered | 
**amount** | **Float** | Amount of the transfer | 
**fees** | **Float** | Fees taken by the bank | [optional] 
**webid** | **String** | WebID of the transfer | [optional] 
**state** | **String** | State of the transfer (created, scheduled, validating, pending, coming, done, canceled, transactionNotFound, deleted, error, bug) | 
**error** | **String** | Error message during transfer, if any | [optional] 
**label** | **String** | Label of the transfer | [optional] 
**account_balance** | **Float** | Balance of the account just before the transfer | [optional] 
**id_transaction** | **Integer** | If found, ID of the related transaction | [optional] 
**beneficiary_type** | **String** | Type of beneficiary number, for example: &#39;recipient&#39; (in bank recipient list), &#39;iban&#39; or &#39;phone_number&#39; | [default to &#39;recipient&#39;]
**beneficiary_number** | **String** | Beneficiary bank identifier value like recipient webid, iban: EX6713281847025300290000062 or phone_number: 06XXXXXX | [optional] 
**beneficiary_label** | **String** | Label of the beneficiary (needed for transfer to other beneficiary type than &#39;recipient&#39;) | [optional] 
**validate_mechanism** | **String** | Authentication method used to validate transfer (credentials or webauth) | [optional] 
**currency** | **Object** | Currency of the object | [optional] 
**fields** | [**Array&lt;Field&gt;**](Field.md) |  | [optional] 


