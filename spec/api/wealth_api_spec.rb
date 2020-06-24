# frozen_string_literal: true

require 'spec_helper'
require 'json'

# Unit tests for BudgeaClient::WealthApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WealthApi' do
  before do
    # run before each test
    @instance = BudgeaClient::WealthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WealthApi' do
    it 'should create an instance of WealthApi' do
      expect(@instance).to be_instance_of(BudgeaClient::WealthApi)
    end
  end

  # unit tests for finance_securities_get
  # Get securities
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20016]
  describe 'finance_securities_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finance_securities_id_security_history_get
  # Get connection logs
  # Get logs about connections.&lt;br&gt;&lt;br&gt;
  # @param id_security 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit limit number of results
  # @option opts [Integer] :offset offset of first result
  # @option opts [Date] :min_date minimal date
  # @option opts [Date] :max_date maximum date
  # @option opts [String] :period period to group logs
  # @return [nil]
  describe 'finance_securities_id_security_history_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_investments_get
  # Get investments
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20023]
  describe 'users_id_user_accounts_id_account_investments_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_investments_id_investment_history_get
  # Get investment values
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20024]
  describe 'users_id_user_accounts_id_account_investments_id_investment_history_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_investments_id_investment_pockets_get
  # Get pockets
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20025]
  describe 'users_id_user_accounts_id_account_investments_id_investment_pockets_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_investments_id_investment_security_history_get
  # Get connection logs
  # Get logs about connections.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit limit number of results
  # @option opts [Integer] :offset offset of first result
  # @option opts [Date] :min_date minimal date
  # @option opts [Date] :max_date maximum date
  # @option opts [String] :period period to group logs
  # @return [nil]
  describe 'users_id_user_accounts_id_account_investments_id_investment_security_history_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_accounts_id_account_pockets_get
  # Get pockets
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_account 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20025]
  describe 'users_id_user_accounts_id_account_pockets_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_investments_get
  # Get investments
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20023]
  describe 'users_id_user_connections_id_connection_accounts_id_account_investments_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get
  # Get investment values
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20024]
  describe 'users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_pockets_get
  # Get pockets
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20025]
  describe 'users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_pockets_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get
  # Get connection logs
  # Get logs about connections.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit limit number of results
  # @option opts [Integer] :offset offset of first result
  # @option opts [Date] :min_date minimal date
  # @option opts [Date] :max_date maximum date
  # @option opts [String] :period period to group logs
  # @return [nil]
  describe 'users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_accounts_id_account_pockets_get
  # Get pockets
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_account 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20025]
  describe 'users_id_user_connections_id_connection_accounts_id_account_pockets_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_investments_get
  # Get investments
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20023]
  describe 'users_id_user_connections_id_connection_investments_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_investments_id_investment_history_get
  # Get investment values
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20024]
  describe 'users_id_user_connections_id_connection_investments_id_investment_history_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_investments_id_investment_pockets_get
  # Get pockets
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20025]
  describe 'users_id_user_connections_id_connection_investments_id_investment_pockets_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_investments_id_investment_security_history_get
  # Get connection logs
  # Get logs about connections.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit limit number of results
  # @option opts [Integer] :offset offset of first result
  # @option opts [Date] :min_date minimal date
  # @option opts [Date] :max_date maximum date
  # @option opts [String] :period period to group logs
  # @return [nil]
  describe 'users_id_user_connections_id_connection_investments_id_investment_security_history_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_connections_id_connection_pockets_get
  # Get pockets
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_connection 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20025]
  describe 'users_id_user_connections_id_connection_pockets_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_investments_get
  # Get investments
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20023]
  describe 'users_id_user_investments_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_investments_id_investment_history_get
  # Get investment values
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20024]
  describe 'users_id_user_investments_id_investment_history_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_investments_id_investment_pockets_get
  # Get pockets
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20025]
  describe 'users_id_user_investments_id_investment_pockets_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_investments_id_investment_security_history_get
  # Get connection logs
  # Get logs about connections.&lt;br&gt;&lt;br&gt;
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param id_investment 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :limit limit number of results
  # @option opts [Integer] :offset offset of first result
  # @option opts [Date] :min_date minimal date
  # @option opts [Date] :max_date maximum date
  # @option opts [String] :period period to group logs
  # @return [nil]
  describe 'users_id_user_investments_id_investment_security_history_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for users_id_user_pockets_get
  # Get pockets
  # 
  # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
  # @param [Hash] opts the optional parameters
  # @option opts [String] :expand 
  # @return [InlineResponse20025]
  describe 'users_id_user_pockets_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
