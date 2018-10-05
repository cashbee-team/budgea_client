# frozen_string_literal: true

require "uri"

module BudgeaClient
  class TransfersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Returns the list of recipients
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20023]
    def users_id_user_accounts_id_account_recipients_get(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_recipients_get_with_http_info(id_user, id_account, opts)
      return data
    end

    # Returns the list of recipients
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20023, Fixnum, Hash)>] InlineResponse20023 data, response status code and response headers
    def users_id_user_accounts_id_account_recipients_get_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_accounts_id_account_recipients_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_accounts_id_account_recipients_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_accounts_id_account_recipients_get"
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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20023')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_accounts_id_account_recipients_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Continue addition of a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Recipient]
    def users_id_user_accounts_id_account_recipients_id_recipient_post(id_user, id_account, id_recipient, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_recipients_id_recipient_post_with_http_info(id_user, id_account, id_recipient, opts)
      return data
    end

    # Continue addition of a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Recipient, Fixnum, Hash)>] Recipient data, response status code and response headers
    def users_id_user_accounts_id_account_recipients_id_recipient_post_with_http_info(id_user, id_account, id_recipient, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/recipients/{id_recipient}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Recipient')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_accounts_id_account_recipients_id_recipient_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [InlineResponse20024]
    def users_id_user_accounts_id_account_recipients_id_recipient_transfers_get(id_user, id_account, id_recipient, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_recipients_id_recipient_transfers_get_with_http_info(id_user, id_account, id_recipient, opts)
      return data
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20024, Fixnum, Hash)>] InlineResponse20024 data, response status code and response headers
    def users_id_user_accounts_id_account_recipients_id_recipient_transfers_get_with_http_info(id_user, id_account, id_recipient, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_get"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

      # query parameters
      query_params = {}
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
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
        :return_type => 'InlineResponse20024')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_accounts_id_account_recipients_id_recipient_transfers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state 'created'.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_account, id_recipient, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete_with_http_info(id_user, id_account, id_recipient, id_transfer, opts)
      return data
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete_with_http_info(id_user, id_account, id_recipient, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post(id_user, id_account, id_recipient, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post_with_http_info(id_user, id_account, id_recipient, id_transfer, opts)
      return data
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post_with_http_info(id_user, id_account, id_recipient, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      form_params["validated"] = opts[:'validated'] if !opts[:'validated'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def users_id_user_accounts_id_account_recipients_id_recipient_transfers_post(id_user, id_account, id_recipient, amount, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_recipients_id_recipient_transfers_post_with_http_info(id_user, id_account, id_recipient, amount, opts)
      return data
    end

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
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_accounts_id_account_recipients_id_recipient_transfers_post_with_http_info(id_user, id_account, id_recipient, amount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling TransfersApi.users_id_user_accounts_id_account_recipients_id_recipient_transfers_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/recipients/{id_recipient}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

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
      form_params["amount"] = amount
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["exec_date"] = opts[:'exec_date'] if !opts[:'exec_date'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_accounts_id_account_recipients_id_recipient_transfers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [InlineResponse20024]
    def users_id_user_accounts_id_account_transfers_get(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transfers_get_with_http_info(id_user, id_account, opts)
      return data
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20024, Fixnum, Hash)>] InlineResponse20024 data, response status code and response headers
    def users_id_user_accounts_id_account_transfers_get_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_accounts_id_account_transfers_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_accounts_id_account_transfers_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_accounts_id_account_transfers_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

      # query parameters
      query_params = {}
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
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
        :return_type => 'InlineResponse20024')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_accounts_id_account_transfers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state 'created'.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_accounts_id_account_transfers_id_transfer_delete(id_user, id_account, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transfers_id_transfer_delete_with_http_info(id_user, id_account, id_transfer, opts)
      return data
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_accounts_id_account_transfers_id_transfer_delete_with_http_info(id_user, id_account, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_accounts_id_account_transfers_id_transfer_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_accounts_id_account_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_accounts_id_account_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_accounts_id_account_transfers_id_transfer_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_accounts_id_account_transfers_id_transfer_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_accounts_id_account_transfers_id_transfer_post(id_user, id_account, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transfers_id_transfer_post_with_http_info(id_user, id_account, id_transfer, opts)
      return data
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_accounts_id_account_transfers_id_transfer_post_with_http_info(id_user, id_account, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_accounts_id_account_transfers_id_transfer_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_accounts_id_account_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_accounts_id_account_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_accounts_id_account_transfers_id_transfer_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      form_params["validated"] = opts[:'validated'] if !opts[:'validated'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_accounts_id_account_transfers_id_transfer_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def users_id_user_accounts_id_account_transfers_post(id_user, id_account, amount, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transfers_post_with_http_info(id_user, id_account, amount, opts)
      return data
    end

    # Create a transfer object.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param amount amount of transfer
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label reason of transfer
    # @option opts [Date] :exec_date excution date of transfer
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_accounts_id_account_transfers_post_with_http_info(id_user, id_account, amount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_accounts_id_account_transfers_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_accounts_id_account_transfers_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_accounts_id_account_transfers_post"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling TransfersApi.users_id_user_accounts_id_account_transfers_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
      form_params["amount"] = amount
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["exec_date"] = opts[:'exec_date'] if !opts[:'exec_date'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_accounts_id_account_transfers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the list of recipients
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20023]
    def users_id_user_connections_id_connection_accounts_id_account_recipients_get(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_recipients_get_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Returns the list of recipients
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20023, Fixnum, Hash)>] InlineResponse20023 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_recipients_get_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_get"
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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20023')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_accounts_id_account_recipients_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Continue addition of a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Recipient]
    def users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post(id_user, id_connection, id_account, id_recipient, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post_with_http_info(id_user, id_connection, id_account, id_recipient, opts)
      return data
    end

    # Continue addition of a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Recipient, Fixnum, Hash)>] Recipient data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post_with_http_info(id_user, id_connection, id_account, id_recipient, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Recipient')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [InlineResponse20024]
    def users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get(id_user, id_connection, id_account, id_recipient, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get_with_http_info(id_user, id_connection, id_account, id_recipient, opts)
      return data
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20024, Fixnum, Hash)>] InlineResponse20024 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get_with_http_info(id_user, id_connection, id_account, id_recipient, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

      # query parameters
      query_params = {}
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
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
        :return_type => 'InlineResponse20024')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state 'created'.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_connection, id_account, id_recipient, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete_with_http_info(id_user, id_connection, id_account, id_recipient, id_transfer, opts)
      return data
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete_with_http_info(id_user, id_connection, id_account, id_recipient, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post(id_user, id_connection, id_account, id_recipient, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post_with_http_info(id_user, id_connection, id_account, id_recipient, id_transfer, opts)
      return data
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post_with_http_info(id_user, id_connection, id_account, id_recipient, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      form_params["validated"] = opts[:'validated'] if !opts[:'validated'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_id_transfer_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post(id_user, id_connection, id_account, id_recipient, amount, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post_with_http_info(id_user, id_connection, id_account, id_recipient, amount, opts)
      return data
    end

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
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post_with_http_info(id_user, id_connection, id_account, id_recipient, amount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/recipients/{id_recipient}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

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
      form_params["amount"] = amount
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["exec_date"] = opts[:'exec_date'] if !opts[:'exec_date'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_accounts_id_account_recipients_id_recipient_transfers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [InlineResponse20024]
    def users_id_user_connections_id_connection_accounts_id_account_transfers_get(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transfers_get_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20024, Fixnum, Hash)>] InlineResponse20024 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transfers_get_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

      # query parameters
      query_params = {}
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
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
        :return_type => 'InlineResponse20024')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_accounts_id_account_transfers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state 'created'.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete(id_user, id_connection, id_account, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete_with_http_info(id_user, id_connection, id_account, id_transfer, opts)
      return data
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete_with_http_info(id_user, id_connection, id_account, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post(id_user, id_connection, id_account, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post_with_http_info(id_user, id_connection, id_account, id_transfer, opts)
      return data
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post_with_http_info(id_user, id_connection, id_account, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      form_params["validated"] = opts[:'validated'] if !opts[:'validated'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_accounts_id_account_transfers_id_transfer_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def users_id_user_connections_id_connection_accounts_id_account_transfers_post(id_user, id_connection, id_account, amount, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transfers_post_with_http_info(id_user, id_connection, id_account, amount, opts)
      return data
    end

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
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transfers_post_with_http_info(id_user, id_connection, id_account, amount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_post"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling TransfersApi.users_id_user_connections_id_connection_accounts_id_account_transfers_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
      form_params["amount"] = amount
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["exec_date"] = opts[:'exec_date'] if !opts[:'exec_date'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_accounts_id_account_transfers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the list of recipients
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20023]
    def users_id_user_connections_id_connection_recipients_get(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_recipients_get_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Returns the list of recipients
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20023, Fixnum, Hash)>] InlineResponse20023 data, response status code and response headers
    def users_id_user_connections_id_connection_recipients_get_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_recipients_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_recipients_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_recipients_get"
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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20023')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_recipients_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Continue addition of a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Recipient]
    def users_id_user_connections_id_connection_recipients_id_recipient_post(id_user, id_connection, id_recipient, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_recipients_id_recipient_post_with_http_info(id_user, id_connection, id_recipient, opts)
      return data
    end

    # Continue addition of a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Recipient, Fixnum, Hash)>] Recipient data, response status code and response headers
    def users_id_user_connections_id_connection_recipients_id_recipient_post_with_http_info(id_user, id_connection, id_recipient, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/recipients/{id_recipient}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Recipient')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_recipients_id_recipient_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [InlineResponse20024]
    def users_id_user_connections_id_connection_recipients_id_recipient_transfers_get(id_user, id_connection, id_recipient, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_recipients_id_recipient_transfers_get_with_http_info(id_user, id_connection, id_recipient, opts)
      return data
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20024, Fixnum, Hash)>] InlineResponse20024 data, response status code and response headers
    def users_id_user_connections_id_connection_recipients_id_recipient_transfers_get_with_http_info(id_user, id_connection, id_recipient, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_get"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

      # query parameters
      query_params = {}
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
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
        :return_type => 'InlineResponse20024')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_recipients_id_recipient_transfers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state 'created'.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_connection, id_recipient, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete_with_http_info(id_user, id_connection, id_recipient, id_transfer, opts)
      return data
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete_with_http_info(id_user, id_connection, id_recipient, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post(id_user, id_connection, id_recipient, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post_with_http_info(id_user, id_connection, id_recipient, id_transfer, opts)
      return data
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post_with_http_info(id_user, id_connection, id_recipient, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      form_params["validated"] = opts[:'validated'] if !opts[:'validated'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_recipients_id_recipient_transfers_id_transfer_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def users_id_user_connections_id_connection_recipients_id_recipient_transfers_post(id_user, id_connection, id_recipient, amount, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_recipients_id_recipient_transfers_post_with_http_info(id_user, id_connection, id_recipient, amount, opts)
      return data
    end

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
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_recipients_id_recipient_transfers_post_with_http_info(id_user, id_connection, id_recipient, amount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling TransfersApi.users_id_user_connections_id_connection_recipients_id_recipient_transfers_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/recipients/{id_recipient}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

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
      form_params["amount"] = amount
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["exec_date"] = opts[:'exec_date'] if !opts[:'exec_date'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_recipients_id_recipient_transfers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [InlineResponse20024]
    def users_id_user_connections_id_connection_transfers_get(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transfers_get_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20024, Fixnum, Hash)>] InlineResponse20024 data, response status code and response headers
    def users_id_user_connections_id_connection_transfers_get_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_transfers_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_transfers_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_transfers_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

      # query parameters
      query_params = {}
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
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
        :return_type => 'InlineResponse20024')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_transfers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state 'created'.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_connections_id_connection_transfers_id_transfer_delete(id_user, id_connection, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transfers_id_transfer_delete_with_http_info(id_user, id_connection, id_transfer, opts)
      return data
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_transfers_id_transfer_delete_with_http_info(id_user, id_connection, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_transfers_id_transfer_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_connections_id_connection_transfers_id_transfer_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_transfers_id_transfer_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_connections_id_connection_transfers_id_transfer_post(id_user, id_connection, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transfers_id_transfer_post_with_http_info(id_user, id_connection, id_transfer, opts)
      return data
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_transfers_id_transfer_post_with_http_info(id_user, id_connection, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_transfers_id_transfer_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_connections_id_connection_transfers_id_transfer_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      form_params["validated"] = opts[:'validated'] if !opts[:'validated'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_transfers_id_transfer_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def users_id_user_connections_id_connection_transfers_post(id_user, id_connection, amount, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transfers_post_with_http_info(id_user, id_connection, amount, opts)
      return data
    end

    # Create a transfer object.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param amount amount of transfer
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label reason of transfer
    # @option opts [Date] :exec_date excution date of transfer
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_connections_id_connection_transfers_post_with_http_info(id_user, id_connection, amount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_connections_id_connection_transfers_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_connections_id_connection_transfers_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling TransfersApi.users_id_user_connections_id_connection_transfers_post"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling TransfersApi.users_id_user_connections_id_connection_transfers_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
      form_params["amount"] = amount
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["exec_date"] = opts[:'exec_date'] if !opts[:'exec_date'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_connections_id_connection_transfers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Returns the list of recipients
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20023]
    def users_id_user_recipients_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_recipients_get_with_http_info(id_user, opts)
      return data
    end

    # Returns the list of recipients
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20023, Fixnum, Hash)>] InlineResponse20023 data, response status code and response headers
    def users_id_user_recipients_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_recipients_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_recipients_get"
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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20023')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_recipients_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Continue addition of a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Recipient]
    def users_id_user_recipients_id_recipient_post(id_user, id_recipient, opts = {})
      data, _status_code, _headers = users_id_user_recipients_id_recipient_post_with_http_info(id_user, id_recipient, opts)
      return data
    end

    # Continue addition of a recipient.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Recipient, Fixnum, Hash)>] Recipient data, response status code and response headers
    def users_id_user_recipients_id_recipient_post_with_http_info(id_user, id_recipient, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_recipients_id_recipient_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_recipients_id_recipient_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_recipients_id_recipient_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/recipients/{id_recipient}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Recipient')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_recipients_id_recipient_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [InlineResponse20024]
    def users_id_user_recipients_id_recipient_transfers_get(id_user, id_recipient, opts = {})
      data, _status_code, _headers = users_id_user_recipients_id_recipient_transfers_get_with_http_info(id_user, id_recipient, opts)
      return data
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_recipient 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20024, Fixnum, Hash)>] InlineResponse20024 data, response status code and response headers
    def users_id_user_recipients_id_recipient_transfers_get_with_http_info(id_user, id_recipient, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_recipients_id_recipient_transfers_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_recipients_id_recipient_transfers_get"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_recipients_id_recipient_transfers_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/recipients/{id_recipient}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

      # query parameters
      query_params = {}
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
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
        :return_type => 'InlineResponse20024')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_recipients_id_recipient_transfers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state 'created'.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_recipients_id_recipient_transfers_id_transfer_delete(id_user, id_recipient, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_recipients_id_recipient_transfers_id_transfer_delete_with_http_info(id_user, id_recipient, id_transfer, opts)
      return data
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_recipients_id_recipient_transfers_id_transfer_delete_with_http_info(id_user, id_recipient, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_recipients_id_recipient_transfers_id_transfer_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_recipients_id_recipient_transfers_id_transfer_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/recipients/{id_recipient}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_recipients_id_recipient_transfers_id_transfer_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_recipients_id_recipient_transfers_id_transfer_post(id_user, id_recipient, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_recipients_id_recipient_transfers_id_transfer_post_with_http_info(id_user, id_recipient, id_transfer, opts)
      return data
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_recipient 
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_recipients_id_recipient_transfers_id_transfer_post_with_http_info(id_user, id_recipient, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_recipients_id_recipient_transfers_id_transfer_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_recipients_id_recipient_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_recipients_id_recipient_transfers_id_transfer_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/recipients/{id_recipient}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      form_params["validated"] = opts[:'validated'] if !opts[:'validated'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_recipients_id_recipient_transfers_id_transfer_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

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
    def users_id_user_recipients_id_recipient_transfers_post(id_user, id_recipient, amount, opts = {})
      data, _status_code, _headers = users_id_user_recipients_id_recipient_transfers_post_with_http_info(id_user, id_recipient, amount, opts)
      return data
    end

    # Create a transfer object.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_recipient 
    # @param amount amount of transfer
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label reason of transfer
    # @option opts [Date] :exec_date excution date of transfer
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_recipients_id_recipient_transfers_post_with_http_info(id_user, id_recipient, amount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_recipients_id_recipient_transfers_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'id_recipient' is set
      if @api_client.config.client_side_validation && id_recipient.nil?
        fail ArgumentError, "Missing the required parameter 'id_recipient' when calling TransfersApi.users_id_user_recipients_id_recipient_transfers_post"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling TransfersApi.users_id_user_recipients_id_recipient_transfers_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/recipients/{id_recipient}/transfers".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_recipient' + '}', id_recipient.to_s)

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
      form_params["amount"] = amount
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["exec_date"] = opts[:'exec_date'] if !opts[:'exec_date'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_recipients_id_recipient_transfers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [InlineResponse20024]
    def users_id_user_transfers_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_transfers_get_with_http_info(id_user, opts)
      return data
    end

    # Get transfers
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :period period to group logs
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20024, Fixnum, Hash)>] InlineResponse20024 data, response status code and response headers
    def users_id_user_transfers_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_transfers_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_transfers_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/transfers".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
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
        :return_type => 'InlineResponse20024')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_transfers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state 'created'.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_transfers_id_transfer_delete(id_user, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_transfers_id_transfer_delete_with_http_info(id_user, id_transfer, opts)
      return data
    end

    # Cancel a transfer.
    # It is possible to cancel only a transfer in state &#39;created&#39;.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_transfers_id_transfer_delete_with_http_info(id_user, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_transfers_id_transfer_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_transfers_id_transfer_delete"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_transfers_id_transfer_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_transfers_id_transfer_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_transfers_id_transfer_post(id_user, id_transfer, opts = {})
      data, _status_code, _headers = users_id_user_transfers_id_transfer_post_with_http_info(id_user, id_transfer, opts)
      return data
    end

    # Execute or edit a Transfer.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transfer 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :validated set it to initialize transfer on the bank website.
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_transfers_id_transfer_post_with_http_info(id_user, id_transfer, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_transfers_id_transfer_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_transfers_id_transfer_post"
      end
      # verify the required parameter 'id_transfer' is set
      if @api_client.config.client_side_validation && id_transfer.nil?
        fail ArgumentError, "Missing the required parameter 'id_transfer' when calling TransfersApi.users_id_user_transfers_id_transfer_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/transfers/{id_transfer}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transfer' + '}', id_transfer.to_s)

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
      form_params["validated"] = opts[:'validated'] if !opts[:'validated'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_transfers_id_transfer_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a transfer object.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param amount amount of transfer
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label reason of transfer
    # @option opts [Date] :exec_date excution date of transfer
    # @option opts [String] :expand 
    # @return [Transfer]
    def users_id_user_transfers_post(id_user, amount, opts = {})
      data, _status_code, _headers = users_id_user_transfers_post_with_http_info(id_user, amount, opts)
      return data
    end

    # Create a transfer object.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param amount amount of transfer
    # @param [Hash] opts the optional parameters
    # @option opts [String] :label reason of transfer
    # @option opts [Date] :exec_date excution date of transfer
    # @option opts [String] :expand 
    # @return [Array<(Transfer, Fixnum, Hash)>] Transfer data, response status code and response headers
    def users_id_user_transfers_post_with_http_info(id_user, amount, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TransfersApi.users_id_user_transfers_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TransfersApi.users_id_user_transfers_post"
      end
      # verify the required parameter 'amount' is set
      if @api_client.config.client_side_validation && amount.nil?
        fail ArgumentError, "Missing the required parameter 'amount' when calling TransfersApi.users_id_user_transfers_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/transfers".sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params["amount"] = amount
      form_params["label"] = opts[:'label'] if !opts[:'label'].nil?
      form_params["exec_date"] = opts[:'exec_date'] if !opts[:'exec_date'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transfer')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransfersApi#users_id_user_transfers_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
