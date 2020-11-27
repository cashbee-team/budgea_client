=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'

# Unit tests for BudgeaClient::RecipientsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RecipientsApi' do
  before do
    # run before each test
    @instance = BudgeaClient::RecipientsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RecipientsApi' do
    it 'should create an instance of RecipientsApi' do
      expect(@instance).to be_instance_of(BudgeaClient::RecipientsApi)
    end
  end

  # unit tests for users_id_user_accounts_id_account_recipients_post
  # Add a recipient.
  # if config key transfer.recipient.iban_white_list.enabled is set to 1, recipients whose IBAN are not from countries codes contained in transfer.recipient.iban_white_list.entries will be deleted&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :background if true, do synchronization in background
  # @option opts [String] :label label of recipient
  # @option opts [String] :iban iban of recipient
  # @option opts [String] :expand 
  # @return [Recipient]
  describe 'users_id_user_accounts_id_account_recipients_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_recipients_post
  # Add a recipient.
  # if config key transfer.recipient.iban_white_list.enabled is set to 1, recipients whose IBAN are not from countries codes contained in transfer.recipient.iban_white_list.entries will be deleted&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :background if true, do synchronization in background
  # @option opts [String] :label label of recipient
  # @option opts [String] :iban iban of recipient
  # @option opts [String] :expand 
  # @return [Recipient]
  describe 'users_id_user_connections_id_connection_accounts_id_account_recipients_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_recipients_post
  # Add a recipient.
  # if config key transfer.recipient.iban_white_list.enabled is set to 1, recipients whose IBAN are not from countries codes contained in transfer.recipient.iban_white_list.entries will be deleted&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :background if true, do synchronization in background
  # @option opts [String] :label label of recipient
  # @option opts [String] :iban iban of recipient
  # @option opts [String] :expand 
  # @return [Recipient]
  describe 'users_id_user_connections_id_connection_recipients_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_recipients_post
  # Add a recipient.
  # if config key transfer.recipient.iban_white_list.enabled is set to 1, recipients whose IBAN are not from countries codes contained in transfer.recipient.iban_white_list.entries will be deleted&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :background if true, do synchronization in background
  # @option opts [String] :label label of recipient
  # @option opts [String] :iban iban of recipient
  # @option opts [String] :expand 
  # @return [Recipient]
  describe 'users_id_user_recipients_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
