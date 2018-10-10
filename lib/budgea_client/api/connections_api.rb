# frozen_string_literal: true

require "uri"

module BudgeaClient
  class ConnectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get list of connectors
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2007]
    def banks_get(opts = {})
      data, _status_code, _headers = banks_get_with_http_info(opts)
      return data
    end

    # Get list of connectors
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2007, Fixnum, Hash)>] InlineResponse2007 data, response status code and response headers
    def banks_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.banks_get ..."
      end
      # resource path
      local_var_path = "/banks"

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2007')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#banks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a subset of id_connection with the largest diversity of account
    # By default, it selects a set of 3 connections.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :range the length of the connection subset
    # @option opts [Integer] :type to target a specific account type which will be
    # @option opts [String] :expand 
    # @return [InlineResponse2008]
    def banks_id_bank_connections_get(id_bank, opts = {})
      data, _status_code, _headers = banks_id_bank_connections_get_with_http_info(id_bank, opts)
      return data
    end

    # Get a subset of id_connection with the largest diversity of account
    # By default, it selects a set of 3 connections.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :range the length of the connection subset
    # @option opts [Integer] :type to target a specific account type which will be
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2008, Fixnum, Hash)>] InlineResponse2008 data, response status code and response headers
    def banks_id_bank_connections_get_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.banks_id_bank_connections_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ConnectionsApi.banks_id_bank_connections_get"
      end
      # resource path
      local_var_path = "/banks/{id_bank}/connections".sub('{' + 'id_bank' + '}', id_bank.to_s)

      # query parameters
      query_params = {}
      query_params[:'range'] = opts[:'range'] if !opts[:'range'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2008')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#banks_id_bank_connections_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connections without a user
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2008]
    def connections_get(opts = {})
      data, _status_code, _headers = connections_get_with_http_info(opts)
      return data
    end

    # Get connections without a user
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2008, Fixnum, Hash)>] InlineResponse2008 data, response status code and response headers
    def connections_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.connections_get ..."
      end
      # resource path
      local_var_path = "/connections"

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2008')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#connections_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of connectors
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20012]
    def connectors_get(opts = {})
      data, _status_code, _headers = connectors_get_with_http_info(opts)
      return data
    end

    # Get list of connectors
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20012, Fixnum, Hash)>] InlineResponse20012 data, response status code and response headers
    def connectors_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.connectors_get ..."
      end
      # resource path
      local_var_path = "/connectors"

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#connectors_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Request a new connector
    # Send a request to add a new connector<br><br>
    # @param name Name of the bank or provider
    # @param login Users login
    # @param password Users password
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api Name of the API
    # @option opts [String] :url Url of the bank
    # @option opts [String] :email Email of the user
    # @option opts [String] :types Type of connector, eg. banks or providers
    # @option opts [String] :comment Optionnal comment
    # @option opts [BOOLEAN] :sendmail if set, send an email to user
    # @option opts [String] :expand 
    # @return [Bank]
    def connectors_post(name, login, password, opts = {})
      data, _status_code, _headers = connectors_post_with_http_info(name, login, password, opts)
      return data
    end

    # Request a new connector
    # Send a request to add a new connector&lt;br&gt;&lt;br&gt;
    # @param name Name of the bank or provider
    # @param login Users login
    # @param password Users password
    # @param [Hash] opts the optional parameters
    # @option opts [String] :api Name of the API
    # @option opts [String] :url Url of the bank
    # @option opts [String] :email Email of the user
    # @option opts [String] :types Type of connector, eg. banks or providers
    # @option opts [String] :comment Optionnal comment
    # @option opts [BOOLEAN] :sendmail if set, send an email to user
    # @option opts [String] :expand 
    # @return [Array<(Bank, Fixnum, Hash)>] Bank data, response status code and response headers
    def connectors_post_with_http_info(name, login, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.connectors_post ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ConnectionsApi.connectors_post"
      end
      # verify the required parameter 'login' is set
      if @api_client.config.client_side_validation && login.nil?
        fail ArgumentError, "Missing the required parameter 'login' when calling ConnectionsApi.connectors_post"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling ConnectionsApi.connectors_post"
      end
      # resource path
      local_var_path = "/connectors"

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["name"] = name
      form_params["login"] = login
      form_params["password"] = password
      form_params["api"] = opts[:'api'] if !opts[:'api'].nil?
      form_params["url"] = opts[:'url'] if !opts[:'url'].nil?
      form_params["email"] = opts[:'email'] if !opts[:'email'].nil?
      form_params["types"] = opts[:'types'] if !opts[:'types'].nil?
      form_params["comment"] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params["sendmail"] = opts[:'sendmail'] if !opts[:'sendmail'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Bank')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#connectors_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connection logs
    # Get logs about connections.<br><br>
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [Integer] :state state of user
    # @option opts [String] :period period to group logs
    # @option opts [Integer] :id_user ID of a user
    # @option opts [Integer] :id_connection ID of a connection
    # @option opts [Integer] :id_bank ID of a bank
    # @option opts [BOOLEAN] :charged consider only logs for charged banks
    # @option opts [String] :expand 
    # @return [InlineResponse20015]
    def logs_get(opts = {})
      data, _status_code, _headers = logs_get_with_http_info(opts)
      return data
    end

    # Get connection logs
    # Get logs about connections.&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [Integer] :state state of user
    # @option opts [String] :period period to group logs
    # @option opts [Integer] :id_user ID of a user
    # @option opts [Integer] :id_connection ID of a connection
    # @option opts [Integer] :id_bank ID of a bank
    # @option opts [BOOLEAN] :charged consider only logs for charged banks
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20015, Fixnum, Hash)>] InlineResponse20015 data, response status code and response headers
    def logs_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.logs_get ..."
      end
      # resource path
      local_var_path = "/logs"

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
      query_params[:'id_user'] = opts[:'id_user'] if !opts[:'id_user'].nil?
      query_params[:'id_connection'] = opts[:'id_connection'] if !opts[:'id_connection'].nil?
      query_params[:'id_bank'] = opts[:'id_bank'] if !opts[:'id_bank'].nil?
      query_params[:'charged'] = opts[:'charged'] if !opts[:'charged'].nil?
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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20015')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of connectors
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2007]
    def providers_get(opts = {})
      data, _status_code, _headers = providers_get_with_http_info(opts)
      return data
    end

    # Get list of connectors
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2007, Fixnum, Hash)>] InlineResponse2007 data, response status code and response headers
    def providers_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.providers_get ..."
      end
      # resource path
      local_var_path = "/providers"

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2007')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#providers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all connections
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Connection]
    def users_id_user_connections_delete(id_user, opts = {})
      data, _status_code, _headers = users_id_user_connections_delete_with_http_info(id_user, opts)
      return data
    end

    # Delete all connections
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Connection, Fixnum, Hash)>] Connection data, response status code and response headers
    def users_id_user_connections_delete_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.users_id_user_connections_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ConnectionsApi.users_id_user_connections_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections".sub('{' + 'id_user' + '}', id_user.to_s)

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Connection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#users_id_user_connections_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connections
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2008]
    def users_id_user_connections_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_connections_get_with_http_info(id_user, opts)
      return data
    end

    # Get connections
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2008, Fixnum, Hash)>] InlineResponse2008 data, response status code and response headers
    def users_id_user_connections_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.users_id_user_connections_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ConnectionsApi.users_id_user_connections_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections".sub('{' + 'id_user' + '}', id_user.to_s)

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2008')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#users_id_user_connections_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a connection.
    # This endpoint deletes a connection and all related accounts and transactions.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Connection]
    def users_id_user_connections_id_connection_delete(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_delete_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Delete a connection.
    # This endpoint deletes a connection and all related accounts and transactions.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Connection, Fixnum, Hash)>] Connection data, response status code and response headers
    def users_id_user_connections_id_connection_delete_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.users_id_user_connections_id_connection_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ConnectionsApi.users_id_user_connections_id_connection_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ConnectionsApi.users_id_user_connections_id_connection_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Connection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#users_id_user_connections_id_connection_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connection additionnal informations
    # <br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2008]
    def users_id_user_connections_id_connection_informations_get(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_informations_get_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Get connection additionnal informations
    # &lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2008, Fixnum, Hash)>] InlineResponse2008 data, response status code and response headers
    def users_id_user_connections_id_connection_informations_get_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.users_id_user_connections_id_connection_informations_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ConnectionsApi.users_id_user_connections_id_connection_informations_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ConnectionsApi.users_id_user_connections_id_connection_informations_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2008')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#users_id_user_connections_id_connection_informations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connection logs
    # Get logs about connections.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [Integer] :state state of user
    # @option opts [String] :period period to group logs
    # @option opts [Integer] :id_user2 ID of a user
    # @option opts [Integer] :id_connection2 ID of a connection
    # @option opts [Integer] :id_bank ID of a bank
    # @option opts [BOOLEAN] :charged consider only logs for charged banks
    # @option opts [String] :expand 
    # @return [InlineResponse20015]
    def users_id_user_connections_id_connection_logs_get(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_logs_get_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Get connection logs
    # Get logs about connections.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [Integer] :state state of user
    # @option opts [String] :period period to group logs
    # @option opts [Integer] :id_user2 ID of a user
    # @option opts [Integer] :id_connection2 ID of a connection
    # @option opts [Integer] :id_bank ID of a bank
    # @option opts [BOOLEAN] :charged consider only logs for charged banks
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20015, Fixnum, Hash)>] InlineResponse20015 data, response status code and response headers
    def users_id_user_connections_id_connection_logs_get_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.users_id_user_connections_id_connection_logs_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ConnectionsApi.users_id_user_connections_id_connection_logs_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ConnectionsApi.users_id_user_connections_id_connection_logs_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/logs".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
      query_params[:'id_user'] = opts[:'id_user2'] if !opts[:'id_user2'].nil?
      query_params[:'id_connection'] = opts[:'id_connection2'] if !opts[:'id_connection2'].nil?
      query_params[:'id_bank'] = opts[:'id_bank'] if !opts[:'id_bank'].nil?
      query_params[:'charged'] = opts[:'charged'] if !opts[:'charged'].nil?
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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20015')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#users_id_user_connections_id_connection_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a connection.
    # Give new parameters to change on the configuration of this connection (for example \"password\").<br><br>It tests connection to website, and if it fails, a 400 response is given with the error code \"wrongpass\" or \"websiteUnavailable\".<br><br>You can also supply meta-parameters on connection, like 'active' or 'expire'.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :active Set if the connection synchronisation is active
    # @option opts [DateTime] :expire Set expiration of the connection to this date
    # @option opts [String] :login Set login to this new login
    # @option opts [String] :password Set password to this new password
    # @option opts [String] :expand 
    # @return [Connection]
    def users_id_user_connections_id_connection_post(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_post_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Update a connection.
    # Give new parameters to change on the configuration of this connection (for example \&quot;password\&quot;).&lt;br&gt;&lt;br&gt;It tests connection to website, and if it fails, a 400 response is given with the error code \&quot;wrongpass\&quot; or \&quot;websiteUnavailable\&quot;.&lt;br&gt;&lt;br&gt;You can also supply meta-parameters on connection, like &#39;active&#39; or &#39;expire&#39;.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :active Set if the connection synchronisation is active
    # @option opts [DateTime] :expire Set expiration of the connection to this date
    # @option opts [String] :login Set login to this new login
    # @option opts [String] :password Set password to this new password
    # @option opts [String] :expand 
    # @return [Array<(Connection, Fixnum, Hash)>] Connection data, response status code and response headers
    def users_id_user_connections_id_connection_post_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.users_id_user_connections_id_connection_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ConnectionsApi.users_id_user_connections_id_connection_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ConnectionsApi.users_id_user_connections_id_connection_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?
      form_params["expire"] = opts[:'expire'] if !opts[:'expire'].nil?
      form_params["login"] = opts[:'login'] if !opts[:'login'].nil?
      form_params["password"] = opts[:'password'] if !opts[:'password'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Connection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#users_id_user_connections_id_connection_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Force synchronisation of a connection.
    # We suggest to pass parameter expand=accounts[transactions] to get all *new* and *updated* transactions.<br><br>Query params: - expand (string): fields to expand - last_update (dateTime): if supplied, get transactions inserted since this date<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Connection]
    def users_id_user_connections_id_connection_put(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_put_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Force synchronisation of a connection.
    # We suggest to pass parameter expand&#x3D;accounts[transactions] to get all *new* and *updated* transactions.&lt;br&gt;&lt;br&gt;Query params: - expand (string): fields to expand - last_update (dateTime): if supplied, get transactions inserted since this date&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Connection, Fixnum, Hash)>] Connection data, response status code and response headers
    def users_id_user_connections_id_connection_put_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.users_id_user_connections_id_connection_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ConnectionsApi.users_id_user_connections_id_connection_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ConnectionsApi.users_id_user_connections_id_connection_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Connection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#users_id_user_connections_id_connection_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new connection.
    # Create a new connection to a given bank or provider. You have to give all needed parameters (use /banks/ID/fields or /providers/ID/fields to get them).<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_bank ID of the bank
    # @option opts [Integer] :id_provider ID of the provider
    # @option opts [String] :expand 
    # @return [Connection]
    def users_id_user_connections_post(id_user, opts = {})
      data, _status_code, _headers = users_id_user_connections_post_with_http_info(id_user, opts)
      return data
    end

    # Add a new connection.
    # Create a new connection to a given bank or provider. You have to give all needed parameters (use /banks/ID/fields or /providers/ID/fields to get them).&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_bank ID of the bank
    # @option opts [Integer] :id_provider ID of the provider
    # @option opts [String] :expand 
    # @return [Array<(Connection, Fixnum, Hash)>] Connection data, response status code and response headers
    def users_id_user_connections_post_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.users_id_user_connections_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ConnectionsApi.users_id_user_connections_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections".sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params["id_bank"] = opts[:'id_bank'] if !opts[:'id_bank'].nil?
      form_params["id_provider"] = opts[:'id_provider'] if !opts[:'id_provider'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Connection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#users_id_user_connections_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get connection logs
    # Get logs about connections.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [Integer] :state state of user
    # @option opts [String] :period period to group logs
    # @option opts [Integer] :id_user2 ID of a user
    # @option opts [Integer] :id_connection ID of a connection
    # @option opts [Integer] :id_bank ID of a bank
    # @option opts [BOOLEAN] :charged consider only logs for charged banks
    # @option opts [String] :expand 
    # @return [InlineResponse20015]
    def users_id_user_logs_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_logs_get_with_http_info(id_user, opts)
      return data
    end

    # Get connection logs
    # Get logs about connections.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [Integer] :state state of user
    # @option opts [String] :period period to group logs
    # @option opts [Integer] :id_user2 ID of a user
    # @option opts [Integer] :id_connection ID of a connection
    # @option opts [Integer] :id_bank ID of a bank
    # @option opts [BOOLEAN] :charged consider only logs for charged banks
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20015, Fixnum, Hash)>] InlineResponse20015 data, response status code and response headers
    def users_id_user_logs_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ConnectionsApi.users_id_user_logs_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ConnectionsApi.users_id_user_logs_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/logs".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
      query_params[:'id_user'] = opts[:'id_user2'] if !opts[:'id_user2'].nil?
      query_params[:'id_connection'] = opts[:'id_connection'] if !opts[:'id_connection'].nil?
      query_params[:'id_bank'] = opts[:'id_bank'] if !opts[:'id_bank'].nil?
      query_params[:'charged'] = opts[:'charged'] if !opts[:'charged'].nil?
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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20015')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#users_id_user_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
