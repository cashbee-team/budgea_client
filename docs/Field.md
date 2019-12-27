# BudgeaClient::Field

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id_connector** | **Integer** | ID of the related connector | 
**id** | **Integer** | ID of the field | 
**name** | **String** | Name of the field | 
**label** | **String** | Label to display to user | 
**regex** | **String** | If set, the value must match this regexp | [optional] 
**type** | **String** | Type of field (text, password, list, hidden) | [optional] [default to &#39;text&#39;]
**ephemeral** | **BOOLEAN** | This field will not be saved in database | [optional] [default to false]
**value** | **String** | Default value of the field | [optional] 
**values** | [**Array&lt;FieldValue&gt;**](FieldValue.md) |  | [optional] 
**required** | **BOOLEAN** | If true, field has to be set to synchronize the connection | [optional] [default to true]
**auth_mechanisms** | **String** | Authentication mechanisms this field is used for | [optional] 


