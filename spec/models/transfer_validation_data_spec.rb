=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for BudgeaClient::TransferValidationData
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'TransferValidationData' do
  before do
    # run before each test
    @instance = BudgeaClient::TransferValidationData.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransferValidationData' do
    it 'should create an instance of TransferValidationData' do
      expect(@instance).to be_instance_of(BudgeaClient::TransferValidationData)
    end
  end
  describe 'test attribute "validated"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
