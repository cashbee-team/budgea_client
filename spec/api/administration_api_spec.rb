=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.1

=end

require 'spec_helper'
require 'json'

# Unit tests for BudgeaClient::AdministrationApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AdministrationApi' do
  before do
    # run before each test
    @instance = BudgeaClient::AdministrationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AdministrationApi' do
    it 'should create an instance of AdministrationApi' do
      expect(@instance).to be_instance_of(BudgeaClient::AdministrationApi)
    end
  end

  # unit tests for clients_get
  # List clients
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20012]
  describe 'clients_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for clients_id_client_delete
  # Delete a client
  # 
  # @param id_client 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Client]
  describe 'clients_id_client_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for clients_id_client_get
  # Get information about a client
  # If you use the manage_token or a configuration token, you will get also the client_secret&lt;br&gt;&lt;br&gt;
  # @param id_client 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Client]
  describe 'clients_id_client_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for clients_id_client_logo_delete
  # Delete the client logo
  # 
  # @param id_client 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [File]
  describe 'clients_id_client_logo_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for clients_id_client_logo_post
  # Update the client logo
  # 
  # @param id_client 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [File]
  describe 'clients_id_client_logo_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for clients_id_client_put
  # Update a client
  # 
  # @param id_client 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :generate_keys set a rsa key pair for the client, which make it possible to generate a jwt user token using this client. No effect if the client already has a set of keys(default: False)
  # @option opts [String] :name name of client
  # @option opts [BOOLEAN] :secret reset the secret
  # @option opts [String] :redirect_uri redirect_uri
  # @option opts [String] :primary_color hexadecimal code of the client primary color (e.g F45B9A)
  # @option opts [String] :secondary_color hexadecimal code of the client secondary color (e.g F45B9A)
  # @option opts [String] :description text to display as a default description
  # @option opts [String] :description_banks text to display as a description for banks
  # @option opts [String] :description_providers text to display as a description for providers
  # @option opts [BOOLEAN] :pro Wether the client should display the company manager page
  # @option opts [String] :config custom config about the client
  # @option opts [BOOLEAN] :update_config update the custom information about the client instead of replacing the existing one (default: True)
  # @option opts [String] :expand 
  # @return [Client]
  describe 'clients_id_client_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for clients_post
  # Create a client
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :generate_keys if True, generate a rsa pair of keys so the client can be used to generate jwt user tokens (default: False)
  # @option opts [String] :name name of client
  # @option opts [String] :redirect_uri redirect_uri
  # @option opts [String] :config custom config about the client
  # @option opts [String] :expand 
  # @return [Client]
  describe 'clients_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for config_get
  # Get configuration of the API.
  # &lt;br&gt;&lt;br&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search limit the results to keys matching the given value
  # @return [nil]
  describe 'config_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for config_logs_get
  # Get configuration change history of the API.
  # &lt;br&gt;&lt;br&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search limit the results to keys matching the given value
  # @option opts [String] :type type of change done on the configuration
  # @option opts [Date] :min_date minimal date of the change
  # @option opts [Date] :max_date maximum date of the change
  # @option opts [String] :expand 
  # @return [InlineResponse20013]
  describe 'config_logs_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for config_post
  # Set a configuration value on the API.
  # Request: { \&quot;connection.disable_new\&quot;: \&quot;0\&quot;, \&quot;search\&quot;: \&quot;connection.disable_new\&quot; }&lt;br&gt;&lt;br&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :search limit the results to keys matching the given value
  # @return [Object]
  describe 'config_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for merchants_get
  # List clients
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20012]
  describe 'merchants_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for merchants_id_client_logo_delete
  # Delete the client logo
  # 
  # @param id_client 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [File]
  describe 'merchants_id_client_logo_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for merchants_id_client_logo_post
  # Update the client logo
  # 
  # @param id_client 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [File]
  describe 'merchants_id_client_logo_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for merchants_post
  # Create a merchant. Needs a user identified in bearer to be used
  # 
  # @param name name of merchant
  # @param redirect_uri regexp to check if given redirect_uri are authorized
  # @param iban payments initiated by this merchant will be done to this IBAN
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Client]
  describe 'merchants_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for monitoring_get
  # get performances stats on this instance
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :period number on days on which stats on synchronization have to be done per worker (Default: 1)
  # @return [nil]
  describe 'monitoring_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for test_sync_post
  # Test synchronization on a random connection.
  # It can be used to test receiving data on your webhooks.&lt;br&gt;&lt;br&gt;
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'test_sync_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for test_webhooks_post
  # Test synchronization on a random connection.
  # It can be used to test receiving data on your webhooks.&lt;br&gt;&lt;br&gt;
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'test_webhooks_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_auth_delete
  # Deletes all webhook authentication types
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [AuthProvider]
  describe 'webhooks_auth_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_auth_get
  # Get webhooks authentication types
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20039]
  describe 'webhooks_auth_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_auth_id_auth_delete
  # Deletes the webhook authentication type
  # Updates the deleted field with the date of the deletion&lt;br&gt;&lt;br&gt;
  # @param id_auth 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [AuthProvider]
  describe 'webhooks_auth_id_auth_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_auth_id_auth_post
  # Updates the webhook authentication type
  # 
  # @param id_auth 
  # @param type The type of the authentication process (oauth, certificate, token, etc...)
  # @param name The name of the authentication process to differentiate
  # @param [Hash] opts the optional parameters
  # @option opts [String] :config The authentication process configuration. A dict containing either the certificate
  # @option opts [String] :expand 
  # @return [AuthProvider]
  describe 'webhooks_auth_id_auth_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_auth_id_auth_put
  # Updates the webhook authentication type
  # 
  # @param id_auth 
  # @param type The type of the authentication process (oauth, certificate, token, etc...)
  # @param name The name of the authentication process to differentiate
  # @param [Hash] opts the optional parameters
  # @option opts [String] :config The authentication process configuration. A dict containt either the certificate
  # @option opts [String] :expand 
  # @return [AuthProvider]
  describe 'webhooks_auth_id_auth_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_auth_post
  # Adds a new webhook authentication type
  # 
  # @param type The type of the authentication process (oauth, certificate, token, etc...)
  # @param name The name of the authentication process to differentiate
  # @param [Hash] opts the optional parameters
  # @option opts [String] :config The authentication process configuration. A dict contains either the certificate
  # @option opts [String] :expand 
  # @return [AuthProvider]
  describe 'webhooks_auth_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_delete
  # Deletes all webhooks
  # Updates the deleted field with the date of the deletion&lt;br&gt;&lt;br&gt;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Webhook]
  describe 'webhooks_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_get
  # Get webhooks
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20038]
  describe 'webhooks_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_id_webhook_add_to_data_get
  # retrieve the list of the value to add in webhooks when sending the requested webhook
  # 
  # @param id_webhook 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'webhooks_id_webhook_add_to_data_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_id_webhook_delete
  # Deletes a webhook
  # Updates the deleted field with the date of the deletion&lt;br&gt;&lt;br&gt;
  # @param id_webhook 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [Webhook]
  describe 'webhooks_id_webhook_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_id_webhook_logs_get
  # Get webhooks logs.
  # Get logs of the webhooks.&lt;br&gt;&lt;br&gt;By default, it selects logs for the last month. You can use \&quot;min_date\&quot; and \&quot;max_date\&quot; to change boundary dates.&lt;br&gt;&lt;br&gt;
  # @param id_webhook 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit limit number of results
  # @option opts [Integer] :offset offset of first result
  # @option opts [Date] :min_date minimal (inclusive) date
  # @option opts [Date] :max_date maximum (inclusive) date
  # @option opts [String] :expand 
  # @return [InlineResponse20040]
  describe 'webhooks_id_webhook_logs_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_id_webhook_post
  # Updates a webhook
  # 
  # @param id_webhook 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :deleted a date to delete the webhook or &#39;null&#39; to enable it
  # @option opts [Integer] :id_user The user ID to associate with the webhook
  # @option opts [Integer] :id_service The service ID to associate with the webhook
  # @option opts [Integer] :id_auth The webhook authentication process to use
  # @option opts [Float] :url The webhook callback url
  # @option opts [String] :event The webhook event
  # @option opts [String] :expand 
  # @return [Webhook]
  describe 'webhooks_id_webhook_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_id_webhook_put
  # Updates a webhook
  # 
  # @param id_webhook 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :deleted a date to delete the webhook or &#39;null&#39; to enable it
  # @option opts [Integer] :id_user The user ID to associate with the webhook
  # @option opts [Integer] :id_service The service ID to associate with the webhook
  # @option opts [Integer] :id_auth The webhook authentication process to use
  # @option opts [Float] :url The webhook callback url
  # @option opts [String] :event The webhook event
  # @option opts [String] :expand 
  # @return [Webhook]
  describe 'webhooks_id_webhook_put test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for webhooks_post
  # Adds a new webhook
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :id_user The user ID to associate with the webhook
  # @option opts [Integer] :id_service The service ID to associate with the webhook
  # @option opts [String] :id_auth The webhook authentication process to use (its ID or its name)
  # @option opts [Float] :url The webhook callback url
  # @option opts [String] :event The webhook event
  # @option opts [String] :params The webhook parameters as an object with three keys: type, key and value
  # @option opts [String] :expand 
  # @return [Webhook]
  describe 'webhooks_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
