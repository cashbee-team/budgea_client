=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.1

=end

require 'spec_helper'
require 'json'

# Unit tests for BudgeaClient::TransfersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransfersApi' do
  before do
    # run before each test
    @instance = BudgeaClient::TransfersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransfersApi' do
    it 'should create an instance of TransfersApi' do
      expect(@instance).to be_instance_of(BudgeaClient::TransfersApi)
    end
  end

  # unit tests for users_id_user_accounts_id_account_recipients_get
  # Returns the list of recipients.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @option opts [String] :category 
  # @option opts [String] :bank_name 
  # @option opts [String] :deleted 
  # @option opts [String] :bic 
  # @option opts [String] :label 
  # @option opts [String] :state 
  # @option opts [String] :iban 
  # @option opts [String] :error 
  # @option opts [String] :id 
  # @return [InlineResponse20028]
  describe 'users_id_user_accounts_id_account_recipients_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_recipients_id_recipient_post
  # Continue addition of a recipient.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param id_recipient 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :background if true, do synchronization in background
  # @option opts [String] :expand 
  # @return [Recipient]
  describe 'users_id_user_accounts_id_account_recipients_id_recipient_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_recipients_id_recipient_transfers_get
  # Get transfers
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param id_recipient 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :period period to group logs
  # @option opts [String] :expand 
  # @return [InlineResponse20029]
  describe 'users_id_user_accounts_id_account_recipients_id_recipient_transfers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete
  # Cancel a transfer.
  # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param id_recipient 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post
  # Execute or edit a Transfer.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param id_recipient 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
  # @option opts [Integer] :id_recipient2 set the recipient of the transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_recipients_id_recipient_transfers_post
  # Create a transfer object.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param id_recipient 
  # @param amount amount of transfer
  # @param [Hash] opts the optional parameters
  # @option opts [String] :label reason of transfer
  # @option opts [Date] :exec_date excution date of transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_accounts_id_account_recipients_id_recipient_transfers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_transfers_get
  # Get transfers
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :period period to group logs
  # @option opts [String] :expand 
  # @return [InlineResponse20029]
  describe 'users_id_user_accounts_id_account_transfers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_transfers_id_transfer_delete
  # Cancel a transfer.
  # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_accounts_id_account_transfers_id_transfer_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_transfers_id_transfer_post
  # Execute or edit a Transfer.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
  # @option opts [Integer] :id_recipient set the recipient of the transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_accounts_id_account_transfers_id_transfer_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_transfers_post
  # Create a transfer object.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param amount amount of transfer
  # @param [Hash] opts the optional parameters
  # @option opts [String] :label reason of transfer
  # @option opts [Date] :exec_date excution date of transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_accounts_id_account_transfers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_recipients_get
  # Returns the list of recipients.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20028]
  describe 'users_id_user_connections_id_connection_accounts_id_account_recipients_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post
  # Continue addition of a recipient.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param id_recipient 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :background if true, do synchronization in background
  # @option opts [String] :expand 
  # @return [Recipient]
  describe 'users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get
  # Get transfers
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param id_recipient 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :period period to group logs
  # @option opts [String] :expand 
  # @return [InlineResponse20029]
  describe 'users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete
  # Cancel a transfer.
  # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param id_recipient 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post
  # Execute or edit a Transfer.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param id_recipient 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
  # @option opts [Integer] :id_recipient2 set the recipient of the transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post
  # Create a transfer object.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param id_recipient 
  # @param amount amount of transfer
  # @param [Hash] opts the optional parameters
  # @option opts [String] :label reason of transfer
  # @option opts [Date] :exec_date excution date of transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_transfers_get
  # Get transfers
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :period period to group logs
  # @option opts [String] :expand 
  # @return [InlineResponse20029]
  describe 'users_id_user_connections_id_connection_accounts_id_account_transfers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete
  # Cancel a transfer.
  # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post
  # Execute or edit a Transfer.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
  # @option opts [Integer] :id_recipient set the recipient of the transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_transfers_post
  # Create a transfer object.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param amount amount of transfer
  # @param [Hash] opts the optional parameters
  # @option opts [String] :label reason of transfer
  # @option opts [Date] :exec_date excution date of transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_accounts_id_account_transfers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_recipients_get
  # Returns the list of recipients.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20028]
  describe 'users_id_user_connections_id_connection_recipients_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_recipients_id_recipient_post
  # Continue addition of a recipient.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_recipient 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :background if true, do synchronization in background
  # @option opts [String] :expand 
  # @return [Recipient]
  describe 'users_id_user_connections_id_connection_recipients_id_recipient_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_recipients_id_recipient_transfers_get
  # Get transfers
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_recipient 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :period period to group logs
  # @option opts [String] :expand 
  # @return [InlineResponse20029]
  describe 'users_id_user_connections_id_connection_recipients_id_recipient_transfers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete
  # Cancel a transfer.
  # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_recipient 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post
  # Execute or edit a Transfer.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_recipient 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
  # @option opts [Integer] :id_recipient2 set the recipient of the transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_recipients_id_recipient_transfers_post
  # Create a transfer object.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_recipient 
  # @param amount amount of transfer
  # @param [Hash] opts the optional parameters
  # @option opts [String] :label reason of transfer
  # @option opts [Date] :exec_date excution date of transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_recipients_id_recipient_transfers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_transfers_get
  # Get transfers
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :period period to group logs
  # @option opts [String] :expand 
  # @return [InlineResponse20029]
  describe 'users_id_user_connections_id_connection_transfers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_transfers_id_transfer_delete
  # Cancel a transfer.
  # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_transfers_id_transfer_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_transfers_id_transfer_post
  # Execute or edit a Transfer.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
  # @option opts [Integer] :id_recipient set the recipient of the transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_transfers_id_transfer_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_transfers_post
  # Create a transfer object.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param amount amount of transfer
  # @param [Hash] opts the optional parameters
  # @option opts [String] :label reason of transfer
  # @option opts [Date] :exec_date excution date of transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_connections_id_connection_transfers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_recipients_get
  # Returns the list of recipients.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20028]
  describe 'users_id_user_recipients_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_recipients_id_recipient_post
  # Continue addition of a recipient.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_recipient 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :background if true, do synchronization in background
  # @option opts [String] :expand 
  # @return [Recipient]
  describe 'users_id_user_recipients_id_recipient_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_recipients_id_recipient_transfers_get
  # Get transfers
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_recipient 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :period period to group logs
  # @option opts [String] :expand 
  # @return [InlineResponse20029]
  describe 'users_id_user_recipients_id_recipient_transfers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_recipients_id_recipient_transfers_id_transfer_delete
  # Cancel a transfer.
  # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_recipient 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_recipients_id_recipient_transfers_id_transfer_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_recipients_id_recipient_transfers_id_transfer_post
  # Execute or edit a Transfer.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_recipient 
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
  # @option opts [Integer] :id_recipient2 set the recipient of the transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_recipients_id_recipient_transfers_id_transfer_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_recipients_id_recipient_transfers_post
  # Create a transfer object.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_recipient 
  # @param amount amount of transfer
  # @param [Hash] opts the optional parameters
  # @option opts [String] :label reason of transfer
  # @option opts [Date] :exec_date excution date of transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_recipients_id_recipient_transfers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_transfers_get
  # Get transfers
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :period period to group logs
  # @option opts [String] :expand 
  # @return [InlineResponse20029]
  describe 'users_id_user_transfers_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_transfers_id_transfer_delete
  # Cancel a transfer.
  # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_transfers_id_transfer_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_transfers_id_transfer_post
  # Execute or edit a Transfer.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_transfer 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
  # @option opts [Integer] :id_recipient set the recipient of the transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_transfers_id_transfer_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_transfers_post
  # Create a transfer object.
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param amount amount of transfer
  # @param [Hash] opts the optional parameters
  # @option opts [String] :label reason of transfer
  # @option opts [Date] :exec_date excution date of transfer
  # @option opts [String] :expand 
  # @return [Transfer]
  describe 'users_id_user_transfers_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
