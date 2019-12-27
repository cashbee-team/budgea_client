# BudgeaClient::Order

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the order | 
**id_merchant** | **Integer** | id of the merchant who initiated the order | 
**id_transfer** | **Integer** | id of the transfer used to pay this the order | 
**state** | **String** | State of the order (result of the recipient adding and the transfer execution) | [optional] 
**error_message** | **String** | more information on the state if something went wrong during the order | [optional] 
**opt_out_cause** | **String** | set by the webview, indicates at which step of the payment the user has left the order | [optional] 
**refund_value** | **Float** | Amount refunded | [optional] 


