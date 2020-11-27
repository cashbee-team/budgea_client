=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'

# Unit tests for BudgeaClient::OIDCApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OIDCApi' do
  before do
    # run before each test
    @instance = BudgeaClient::OIDCApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OIDCApi' do
    it 'should create an instance of OIDCApi' do
      expect(@instance).to be_instance_of(BudgeaClient::OIDCApi)
    end
  end

  # unit tests for oidc_whitelist_id_whitelist_delete
  # Delete the supplied authorized redirect uri
  # 
  # @param id_whitelist 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [OidcWhitelist]
  describe 'oidc_whitelist_id_whitelist_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for oidc_whitelist_id_whitelist_post
  # Edit a authorized redirect uri
  # Edit the uri for the supplied authorized redirect uri.&lt;br&gt;&lt;br&gt;
  # @param id_whitelist 
  # @param redirect_uri new authorized redirect uri
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [OidcWhitelist]
  describe 'oidc_whitelist_id_whitelist_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for oidc_whitelist_post
  # Adds an authorized redirect uri
  # It requires the authorized redirect uri to be created&lt;br&gt;&lt;br&gt;
  # @param redirect_uri authorized redirect uri to be created
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [OidcWhitelist]
  describe 'oidc_whitelist_post test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
