# BudgeaClient::Investment

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the investment | 
**id_account** | **Integer** | ID of the related account | 
**label** | **String** | Label of the investment | 
**code** | **String** | Investment code | 
**code_type** | **String** | Code type (ISIN of AMF) | [optional] 
**source** | **String** | Source of the ISIN code (website, notFound) | [optional] 
**description** | **String** | Description of the investment | [optional] 
**quantity** | **Float** | Quantity | [optional] [default to 0.0]
**unitprice** | **Float** | Average buy price | [optional] [default to 0.0]
**unitvalue** | **Float** | Current unit value | [optional] [default to 0.0]
**valuation** | **Float** | Current valuation | [optional] [default to 0.0]
**diff** | **Float** | Capital gain | [optional] [default to 0.0]
**diff_percent** | **Float** | Capital gain in percent (between 0 and 1) | [optional] 
**prev_diff** | **Float** | Capital gain from previous value | [optional] 
**portfolio_share** | **Float** | Percent of the portfolio | [optional] 
**vdate** | **Date** | Value date | [optional] 
**prev_vdate** | **Date** | Value date of the previous value (prev_diff) | [optional] 
**id_security** | **Integer** | ID of the related security | [optional] 
**original_currency** | **Object** | Original currency | [optional] 
**original_valuation** | **Float** | Valuation in original currency | [optional] 
**original_unitvalue** | **Float** | Average buy price in the original currency | [optional] 
**original_unitprice** | **Float** | Current unit value in the original currency | [optional] 
**original_diff** | **Float** | Capital gain in the original currency | [optional] 
**last_update** | **DateTime** | Last update of the investment | [optional] 
**deleted** | **DateTime** | If set, this investment has been removed from the website | [optional] 


