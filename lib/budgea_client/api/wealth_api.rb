# frozen_string_literal: true

require "uri"

module BudgeaClient
  class WealthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get securities
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20014]
    def finance_securities_get(opts = {})
      data, _status_code, _headers = finance_securities_get_with_http_info(opts)
      return data
    end

    # Get securities
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20014, Fixnum, Hash)>] InlineResponse20014 data, response status code and response headers
    def finance_securities_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.finance_securities_get ..."
      end
      # resource path
      local_var_path = "/finance/securities"

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20014')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#finance_securities_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connection logs
    # Get logs about connections.<br><br>
    # @param id_security 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [String] :period period to group logs
    # @return [nil]
    def finance_securities_id_security_history_get(id_security, opts = {})
      finance_securities_id_security_history_get_with_http_info(id_security, opts)
      return nil
    end

    # Get connection logs
    # Get logs about connections.&lt;br&gt;&lt;br&gt;
    # @param id_security 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [String] :period period to group logs
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def finance_securities_id_security_history_get_with_http_info(id_security, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.finance_securities_id_security_history_get ..."
      end
      # verify the required parameter 'id_security' is set
      if @api_client.config.client_side_validation && id_security.nil?
        fail ArgumentError, "Missing the required parameter 'id_security' when calling WealthApi.finance_securities_id_security_history_get"
      end
      # resource path
      local_var_path = "/finance/securities/{id_security}/history".sub('{' + 'id_security' + '}', id_security.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#finance_securities_id_security_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get investments
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20019]
    def users_id_user_accounts_id_account_investments_get(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_investments_get_with_http_info(id_user, id_account, opts)
      return data
    end

    # Get investments
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20019, Fixnum, Hash)>] InlineResponse20019 data, response status code and response headers
    def users_id_user_accounts_id_account_investments_get_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_accounts_id_account_investments_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_accounts_id_account_investments_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling WealthApi.users_id_user_accounts_id_account_investments_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/investments".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20019')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_accounts_id_account_investments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get investment values
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_investment 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20020]
    def users_id_user_accounts_id_account_investments_id_investment_history_get(id_user, id_account, id_investment, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_investments_id_investment_history_get_with_http_info(id_user, id_account, id_investment, opts)
      return data
    end

    # Get investment values
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_investment 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20020, Fixnum, Hash)>] InlineResponse20020 data, response status code and response headers
    def users_id_user_accounts_id_account_investments_id_investment_history_get_with_http_info(id_user, id_account, id_investment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_accounts_id_account_investments_id_investment_history_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_accounts_id_account_investments_id_investment_history_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling WealthApi.users_id_user_accounts_id_account_investments_id_investment_history_get"
      end
      # verify the required parameter 'id_investment' is set
      if @api_client.config.client_side_validation && id_investment.nil?
        fail ArgumentError, "Missing the required parameter 'id_investment' when calling WealthApi.users_id_user_accounts_id_account_investments_id_investment_history_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/investments/{id_investment}/history".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_investment' + '}', id_investment.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20020')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_accounts_id_account_investments_id_investment_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connection logs
    # Get logs about connections.<br><br>
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
    def users_id_user_accounts_id_account_investments_id_investment_security_history_get(id_user, id_account, id_investment, opts = {})
      users_id_user_accounts_id_account_investments_id_investment_security_history_get_with_http_info(id_user, id_account, id_investment, opts)
      return nil
    end

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
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_accounts_id_account_investments_id_investment_security_history_get_with_http_info(id_user, id_account, id_investment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_accounts_id_account_investments_id_investment_security_history_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_accounts_id_account_investments_id_investment_security_history_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling WealthApi.users_id_user_accounts_id_account_investments_id_investment_security_history_get"
      end
      # verify the required parameter 'id_investment' is set
      if @api_client.config.client_side_validation && id_investment.nil?
        fail ArgumentError, "Missing the required parameter 'id_investment' when calling WealthApi.users_id_user_accounts_id_account_investments_id_investment_security_history_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/investments/{id_investment}/security/history".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_investment' + '}', id_investment.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_accounts_id_account_investments_id_investment_security_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get investments
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20019]
    def users_id_user_connections_id_connection_accounts_id_account_investments_get(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_investments_get_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Get investments
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20019, Fixnum, Hash)>] InlineResponse20019 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_investments_get_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/investments".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20019')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_connections_id_connection_accounts_id_account_investments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get investment values
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_investment 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20020]
    def users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get(id_user, id_connection, id_account, id_investment, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get_with_http_info(id_user, id_connection, id_account, id_investment, opts)
      return data
    end

    # Get investment values
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_investment 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20020, Fixnum, Hash)>] InlineResponse20020 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get_with_http_info(id_user, id_connection, id_account, id_investment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get"
      end
      # verify the required parameter 'id_investment' is set
      if @api_client.config.client_side_validation && id_investment.nil?
        fail ArgumentError, "Missing the required parameter 'id_investment' when calling WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/investments/{id_investment}/history".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_investment' + '}', id_investment.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20020')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connection logs
    # Get logs about connections.<br><br>
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
    def users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get(id_user, id_connection, id_account, id_investment, opts = {})
      users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get_with_http_info(id_user, id_connection, id_account, id_investment, opts)
      return nil
    end

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
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get_with_http_info(id_user, id_connection, id_account, id_investment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get"
      end
      # verify the required parameter 'id_investment' is set
      if @api_client.config.client_side_validation && id_investment.nil?
        fail ArgumentError, "Missing the required parameter 'id_investment' when calling WealthApi.users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/investments/{id_investment}/security/history".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_investment' + '}', id_investment.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_connections_id_connection_accounts_id_account_investments_id_investment_security_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get investments
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20019]
    def users_id_user_connections_id_connection_investments_get(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_investments_get_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Get investments
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20019, Fixnum, Hash)>] InlineResponse20019 data, response status code and response headers
    def users_id_user_connections_id_connection_investments_get_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_connections_id_connection_investments_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_connections_id_connection_investments_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling WealthApi.users_id_user_connections_id_connection_investments_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/investments".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20019')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_connections_id_connection_investments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get investment values
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_investment 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20020]
    def users_id_user_connections_id_connection_investments_id_investment_history_get(id_user, id_connection, id_investment, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_investments_id_investment_history_get_with_http_info(id_user, id_connection, id_investment, opts)
      return data
    end

    # Get investment values
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_investment 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20020, Fixnum, Hash)>] InlineResponse20020 data, response status code and response headers
    def users_id_user_connections_id_connection_investments_id_investment_history_get_with_http_info(id_user, id_connection, id_investment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_connections_id_connection_investments_id_investment_history_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_connections_id_connection_investments_id_investment_history_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling WealthApi.users_id_user_connections_id_connection_investments_id_investment_history_get"
      end
      # verify the required parameter 'id_investment' is set
      if @api_client.config.client_side_validation && id_investment.nil?
        fail ArgumentError, "Missing the required parameter 'id_investment' when calling WealthApi.users_id_user_connections_id_connection_investments_id_investment_history_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/investments/{id_investment}/history".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_investment' + '}', id_investment.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20020')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_connections_id_connection_investments_id_investment_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connection logs
    # Get logs about connections.<br><br>
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
    def users_id_user_connections_id_connection_investments_id_investment_security_history_get(id_user, id_connection, id_investment, opts = {})
      users_id_user_connections_id_connection_investments_id_investment_security_history_get_with_http_info(id_user, id_connection, id_investment, opts)
      return nil
    end

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
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_connections_id_connection_investments_id_investment_security_history_get_with_http_info(id_user, id_connection, id_investment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_connections_id_connection_investments_id_investment_security_history_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_connections_id_connection_investments_id_investment_security_history_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling WealthApi.users_id_user_connections_id_connection_investments_id_investment_security_history_get"
      end
      # verify the required parameter 'id_investment' is set
      if @api_client.config.client_side_validation && id_investment.nil?
        fail ArgumentError, "Missing the required parameter 'id_investment' when calling WealthApi.users_id_user_connections_id_connection_investments_id_investment_security_history_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/investments/{id_investment}/security/history".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_investment' + '}', id_investment.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_connections_id_connection_investments_id_investment_security_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get investments
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20019]
    def users_id_user_investments_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_investments_get_with_http_info(id_user, opts)
      return data
    end

    # Get investments
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20019, Fixnum, Hash)>] InlineResponse20019 data, response status code and response headers
    def users_id_user_investments_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_investments_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_investments_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/investments".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20019')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_investments_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get investment values
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_investment 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20020]
    def users_id_user_investments_id_investment_history_get(id_user, id_investment, opts = {})
      data, _status_code, _headers = users_id_user_investments_id_investment_history_get_with_http_info(id_user, id_investment, opts)
      return data
    end

    # Get investment values
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_investment 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20020, Fixnum, Hash)>] InlineResponse20020 data, response status code and response headers
    def users_id_user_investments_id_investment_history_get_with_http_info(id_user, id_investment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_investments_id_investment_history_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_investments_id_investment_history_get"
      end
      # verify the required parameter 'id_investment' is set
      if @api_client.config.client_side_validation && id_investment.nil?
        fail ArgumentError, "Missing the required parameter 'id_investment' when calling WealthApi.users_id_user_investments_id_investment_history_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/investments/{id_investment}/history".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_investment' + '}', id_investment.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20020')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_investments_id_investment_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connection logs
    # Get logs about connections.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_investment 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [String] :period period to group logs
    # @return [nil]
    def users_id_user_investments_id_investment_security_history_get(id_user, id_investment, opts = {})
      users_id_user_investments_id_investment_security_history_get_with_http_info(id_user, id_investment, opts)
      return nil
    end

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
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_investments_id_investment_security_history_get_with_http_info(id_user, id_investment, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: WealthApi.users_id_user_investments_id_investment_security_history_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling WealthApi.users_id_user_investments_id_investment_security_history_get"
      end
      # verify the required parameter 'id_investment' is set
      if @api_client.config.client_side_validation && id_investment.nil?
        fail ArgumentError, "Missing the required parameter 'id_investment' when calling WealthApi.users_id_user_investments_id_investment_security_history_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/investments/{id_investment}/security/history".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_investment' + '}', id_investment.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WealthApi#users_id_user_investments_id_investment_security_history_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
