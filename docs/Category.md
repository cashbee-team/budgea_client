# BudgeaClient::Category

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **Integer** | ID of the category | 
**id_parent_category** | **Integer** | ID of the parent category. If this is a parent category, it will be equal to its own ID | 
**name** | **String** | Name of the category | 
**income** | **BOOLEAN** | Is an income category. If null, this is both an income and an expense category | [optional] 
**color** | **String** | Color of the category | 
**id_parent_category_in_menu** | **Integer** | ID of the parent category to be displayed | 
**name_displayed** | **String** | Displayed name, with HTML tags | [optional] 
**refundable** | **BOOLEAN** | This category accepts opposite sign of transactions | 
**id_user** | **Integer** | If not null, this category is specific to a user | [optional] 
**id_logo** | **Integer** | ID of the logo | [optional] 


