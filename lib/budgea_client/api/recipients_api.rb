# frozen_string_literal: true

require "uri"

module BudgeaClient
  class RecipientsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Add a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label label of recipient
    # @option opts [String] :iban iban of recipient
    # @option opts [String] :expand 
    # @return [Recipient]
    def users_id_user_accounts_id_account_recipients_post(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_recipients_post_with_http_info(id_user, id_account, opts)
      return data
    end

    # Add a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label label of recipient
    # @option opts [String] :iban iban of recipient
    # @option opts [String] :expand 
    # @return [Array<(Recipient, Fixnum, Hash)>] Recipient data, response status code and response headers
    def users_id_user_accounts_id_account_recipients_post_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecipientsApi.users_id_user_accounts_id_account_recipients_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling RecipientsApi.users_id_user_accounts_id_account_recipients_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling RecipientsApi.users_id_user_accounts_id_account_recipients_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/recipients".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["iban"] = opts[:'iban'] if !opts[:'iban'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Recipient')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecipientsApi#users_id_user_accounts_id_account_recipients_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label label of recipient
    # @option opts [String] :iban iban of recipient
    # @option opts [String] :expand 
    # @return [Recipient]
    def users_id_user_connections_id_connection_accounts_id_account_recipients_post(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_recipients_post_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Add a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label label of recipient
    # @option opts [String] :iban iban of recipient
    # @option opts [String] :expand 
    # @return [Array<(Recipient, Fixnum, Hash)>] Recipient data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_recipients_post_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecipientsApi.users_id_user_connections_id_connection_accounts_id_account_recipients_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling RecipientsApi.users_id_user_connections_id_connection_accounts_id_account_recipients_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling RecipientsApi.users_id_user_connections_id_connection_accounts_id_account_recipients_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling RecipientsApi.users_id_user_connections_id_connection_accounts_id_account_recipients_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["iban"] = opts[:'iban'] if !opts[:'iban'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Recipient')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecipientsApi#users_id_user_connections_id_connection_accounts_id_account_recipients_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label label of recipient
    # @option opts [String] :iban iban of recipient
    # @option opts [String] :expand 
    # @return [Recipient]
    def users_id_user_connections_id_connection_recipients_post(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_recipients_post_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Add a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label label of recipient
    # @option opts [String] :iban iban of recipient
    # @option opts [String] :expand 
    # @return [Array<(Recipient, Fixnum, Hash)>] Recipient data, response status code and response headers
    def users_id_user_connections_id_connection_recipients_post_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecipientsApi.users_id_user_connections_id_connection_recipients_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling RecipientsApi.users_id_user_connections_id_connection_recipients_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling RecipientsApi.users_id_user_connections_id_connection_recipients_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/recipients".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["iban"] = opts[:'iban'] if !opts[:'iban'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Recipient')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecipientsApi#users_id_user_connections_id_connection_recipients_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label label of recipient
    # @option opts [String] :iban iban of recipient
    # @option opts [String] :expand 
    # @return [Recipient]
    def users_id_user_recipients_post(id_user, opts = {})
      data, _status_code, _headers = users_id_user_recipients_post_with_http_info(id_user, opts)
      return data
    end

    # Add a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label label of recipient
    # @option opts [String] :iban iban of recipient
    # @option opts [String] :expand 
    # @return [Array<(Recipient, Fixnum, Hash)>] Recipient data, response status code and response headers
    def users_id_user_recipients_post_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RecipientsApi.users_id_user_recipients_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling RecipientsApi.users_id_user_recipients_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/recipients".sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["iban"] = opts[:'iban'] if !opts[:'iban'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Recipient')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RecipientsApi#users_id_user_recipients_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
