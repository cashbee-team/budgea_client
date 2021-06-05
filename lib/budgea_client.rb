=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

# Common files
require 'budgea_client/api_client'
require 'budgea_client/api_error'
require 'budgea_client/version'
require 'budgea_client/configuration'

# Models
require 'budgea_client/models/access'
require 'budgea_client/models/account'
require 'budgea_client/models/account_log'
require 'budgea_client/models/account_type'
require 'budgea_client/models/alert'
require 'budgea_client/models/auth_provider'
require 'budgea_client/models/category'
require 'budgea_client/models/certificate'
require 'budgea_client/models/client'
require 'budgea_client/models/config_log'
require 'budgea_client/models/connection'
require 'budgea_client/models/connection_log'
require 'budgea_client/models/connection_source'
require 'budgea_client/models/connector'
require 'budgea_client/models/connector_category'
require 'budgea_client/models/connector_logo'
require 'budgea_client/models/connector_source'
require 'budgea_client/models/currency'
require 'budgea_client/models/device'
require 'budgea_client/models/document'
require 'budgea_client/models/document_type'
require 'budgea_client/models/field'
require 'budgea_client/models/field_value'
require 'budgea_client/models/file'
require 'budgea_client/models/group'
require 'budgea_client/models/hash_table'
require 'budgea_client/models/inline_response_200'
require 'budgea_client/models/inline_response_200_1'
require 'budgea_client/models/inline_response_200_10'
require 'budgea_client/models/inline_response_200_11'
require 'budgea_client/models/inline_response_200_12'
require 'budgea_client/models/inline_response_200_13'
require 'budgea_client/models/inline_response_200_14'
require 'budgea_client/models/inline_response_200_15'
require 'budgea_client/models/inline_response_200_16'
require 'budgea_client/models/inline_response_200_17'
require 'budgea_client/models/inline_response_200_18'
require 'budgea_client/models/inline_response_200_19'
require 'budgea_client/models/inline_response_200_2'
require 'budgea_client/models/inline_response_200_20'
require 'budgea_client/models/inline_response_200_21'
require 'budgea_client/models/inline_response_200_22'
require 'budgea_client/models/inline_response_200_23'
require 'budgea_client/models/inline_response_200_24'
require 'budgea_client/models/inline_response_200_25'
require 'budgea_client/models/inline_response_200_26'
require 'budgea_client/models/inline_response_200_27'
require 'budgea_client/models/inline_response_200_28'
require 'budgea_client/models/inline_response_200_29'
require 'budgea_client/models/inline_response_200_3'
require 'budgea_client/models/inline_response_200_30'
require 'budgea_client/models/inline_response_200_31'
require 'budgea_client/models/inline_response_200_32'
require 'budgea_client/models/inline_response_200_33'
require 'budgea_client/models/inline_response_200_34'
require 'budgea_client/models/inline_response_200_35'
require 'budgea_client/models/inline_response_200_36'
require 'budgea_client/models/inline_response_200_37'
require 'budgea_client/models/inline_response_200_38'
require 'budgea_client/models/inline_response_200_39'
require 'budgea_client/models/inline_response_200_4'
require 'budgea_client/models/inline_response_200_40'
require 'budgea_client/models/inline_response_200_41'
require 'budgea_client/models/inline_response_200_42'
require 'budgea_client/models/inline_response_200_5'
require 'budgea_client/models/inline_response_200_6'
require 'budgea_client/models/inline_response_200_7'
require 'budgea_client/models/inline_response_200_8'
require 'budgea_client/models/inline_response_200_9'
require 'budgea_client/models/investment'
require 'budgea_client/models/investment_value'
require 'budgea_client/models/keyword'
require 'budgea_client/models/locked_user'
require 'budgea_client/models/oidc_whitelist'
require 'budgea_client/models/order'
require 'budgea_client/models/pocket'
require 'budgea_client/models/profile'
require 'budgea_client/models/project'
require 'budgea_client/models/project_type'
require 'budgea_client/models/recipient'
require 'budgea_client/models/recipient_log'
require 'budgea_client/models/security'
require 'budgea_client/models/subscription'
require 'budgea_client/models/subscription_log'
require 'budgea_client/models/terms_of_service'
require 'budgea_client/models/transaction'
require 'budgea_client/models/transaction_information'
require 'budgea_client/models/transactions_cluster'
require 'budgea_client/models/transfer'
require 'budgea_client/models/transfer_data'
require 'budgea_client/models/transfer_log'
require 'budgea_client/models/transfer_validation_data'
require 'budgea_client/models/user'
require 'budgea_client/models/user_alert'
require 'budgea_client/models/webhook'
require 'budgea_client/models/webhook_data'
require 'budgea_client/models/webhook_log'

# APIs
require 'budgea_client/api/administration_api'
require 'budgea_client/api/authentication_api'
require 'budgea_client/api/banks_api'
require 'budgea_client/api/connections_api'
require 'budgea_client/api/documents_api'
require 'budgea_client/api/ocr_api'
require 'budgea_client/api/oidc_api'
require 'budgea_client/api/pfm_api'
require 'budgea_client/api/providers_api'
require 'budgea_client/api/recipients_api'
require 'budgea_client/api/terms_api'
require 'budgea_client/api/transfer_api'
require 'budgea_client/api/transfers_api'
require 'budgea_client/api/users_management_api'
require 'budgea_client/api/wealth_api'

module BudgeaClient
  class << self
    # Customize default settings for the SDK using block.
    #   BudgeaClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
