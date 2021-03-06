=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'

# Unit tests for BudgeaClient::TransferApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransferApi' do
  before do
    # run before each test
    @instance = BudgeaClient::TransferApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransferApi' do
    it 'should create an instance of TransferApi' do
      expect(@instance).to be_instance_of(BudgeaClient::TransferApi)
    end
  end

  # unit tests for webauth_get
  # First step to establish an oAuth2 connection.
  # The route encapsulate 2 functionalities: 1. Create or update a connection through oAuth2 session.&lt;br&gt;&lt;br&gt;2. Execute a transfer through OAuth2 session.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :id_connector ID of the connector
  # @option opts [Integer] :id_transfer ID of the transfer
  # @option opts [String] :connector_uuid Optional unique ID of the connector (replaces id_connector)
  # @option opts [Integer] :client_id Client Application ID
  # @option opts [String] :redirect_uri Redirect URI
  # @option opts [String] :state Optional state
  # @option opts [String] :fields Optional fields
  # @option opts [Integer] :id_connection Optional already existing connection to update
  # @return [nil]
  describe 'webauth_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
