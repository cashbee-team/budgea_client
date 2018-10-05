# frozen_string_literal: true

require "uri"

module BudgeaClient
  class PFMApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Confirm new email address
    # 
    # @param token token received by email
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def auth_confirm_new_email_post(token, opts = {})
      auth_confirm_new_email_post_with_http_info(token, opts)
      return nil
    end

    # Confirm new email address
    # 
    # @param token token received by email
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def auth_confirm_new_email_post_with_http_info(token, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.auth_confirm_new_email_post ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling PFMApi.auth_confirm_new_email_post"
      end
      # resource path
      local_var_path = "/auth/confirmNewEmail"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["token"] = token

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#auth_confirm_new_email_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Confirm email address
    # <br><br>
    # @param token token received in email
    # @param application application in use
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2001]
    def auth_confirm_post(token, application, opts = {})
      data, _status_code, _headers = auth_confirm_post_with_http_info(token, application, opts)
      return data
    end

    # Confirm email address
    # &lt;br&gt;&lt;br&gt;
    # @param token token received in email
    # @param application application in use
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2001, Fixnum, Hash)>] InlineResponse2001 data, response status code and response headers
    def auth_confirm_post_with_http_info(token, application, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.auth_confirm_post ..."
      end
      # verify the required parameter 'token' is set
      if @api_client.config.client_side_validation && token.nil?
        fail ArgumentError, "Missing the required parameter 'token' when calling PFMApi.auth_confirm_post"
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling PFMApi.auth_confirm_post"
      end
      # resource path
      local_var_path = "/auth/confirm"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["token"] = token
      form_params["application"] = application

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2001')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#auth_confirm_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Login with credentials and set as cookie
    # 
    # @param username username
    # @param password password
    # @param application application name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scope scope requested for the token
    # @return [nil]
    def auth_cookie_post(username, password, application, opts = {})
      auth_cookie_post_with_http_info(username, password, application, opts)
      return nil
    end

    # Login with credentials and set as cookie
    # 
    # @param username username
    # @param password password
    # @param application application name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scope scope requested for the token
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def auth_cookie_post_with_http_info(username, password, application, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.auth_cookie_post ..."
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PFMApi.auth_cookie_post"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling PFMApi.auth_cookie_post"
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling PFMApi.auth_cookie_post"
      end
      # resource path
      local_var_path = "/auth/cookie"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["username"] = username
      form_params["password"] = password
      form_params["application"] = application
      form_params["scope"] = opts[:'scope'] if !opts[:'scope'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#auth_cookie_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register to API
    # Create a new user with his email address and password.<br><br><br><br>
    # @param email email address
    # @param password password
    # @param application application in use
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sponsor sponsor code to get advantages
    # @option opts [String] :notification_token APNS or GCM token to send notifications to device
    # @return [InlineResponse2003]
    def auth_register_post(email, password, application, opts = {})
      data, _status_code, _headers = auth_register_post_with_http_info(email, password, application, opts)
      return data
    end

    # Register to API
    # Create a new user with his email address and password.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;
    # @param email email address
    # @param password password
    # @param application application in use
    # @param [Hash] opts the optional parameters
    # @option opts [String] :sponsor sponsor code to get advantages
    # @option opts [String] :notification_token APNS or GCM token to send notifications to device
    # @return [Array<(InlineResponse2003, Fixnum, Hash)>] InlineResponse2003 data, response status code and response headers
    def auth_register_post_with_http_info(email, password, application, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.auth_register_post ..."
      end
      # verify the required parameter 'email' is set
      if @api_client.config.client_side_validation && email.nil?
        fail ArgumentError, "Missing the required parameter 'email' when calling PFMApi.auth_register_post"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling PFMApi.auth_register_post"
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling PFMApi.auth_register_post"
      end
      # resource path
      local_var_path = "/auth/register"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["email"] = email
      form_params["password"] = password
      form_params["application"] = application
      form_params["sponsor"] = opts[:'sponsor'] if !opts[:'sponsor'].nil?
      form_params["notification_token"] = opts[:'notification_token'] if !opts[:'notification_token'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2003')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#auth_register_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Remove user access
    # This endpoint removes the token in use.<br><br>
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def auth_token_delete(opts = {})
      auth_token_delete_with_http_info(opts)
      return nil
    end

    # Remove user access
    # This endpoint removes the token in use.&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def auth_token_delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.auth_token_delete ..."
      end
      # resource path
      local_var_path = "/auth/token"

      # query parameters
      query_params = {}

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#auth_token_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Login to API with credentials
    # Request a new user token by giving an username and a password.<br><br><br><br>
    # @param username username
    # @param password password
    # @param application application name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scope scope requested for the token
    # @return [InlineResponse2004]
    def auth_token_post(username, password, application, opts = {})
      data, _status_code, _headers = auth_token_post_with_http_info(username, password, application, opts)
      return data
    end

    # Login to API with credentials
    # Request a new user token by giving an username and a password.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;
    # @param username username
    # @param password password
    # @param application application name
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scope scope requested for the token
    # @return [Array<(InlineResponse2004, Fixnum, Hash)>] InlineResponse2004 data, response status code and response headers
    def auth_token_post_with_http_info(username, password, application, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.auth_token_post ..."
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling PFMApi.auth_token_post"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling PFMApi.auth_token_post"
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling PFMApi.auth_token_post"
      end
      # resource path
      local_var_path = "/auth/token"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = {}
      form_params["username"] = username
      form_params["password"] = password
      form_params["application"] = application
      form_params["scope"] = opts[:'scope'] if !opts[:'scope'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2004')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#auth_token_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the user's connections
    # deletes all connections of the user given his hash<br><br>
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def hash_delete(opts = {})
      hash_delete_with_http_info(opts)
      return nil
    end

    # Delete the user&#39;s connections
    # deletes all connections of the user given his hash&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def hash_delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.hash_delete ..."
      end
      # resource path
      local_var_path = "/hash"

      # query parameters
      query_params = {}

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#hash_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get balances of accounts
    # Get balance (income/outcome/balance) of enabled accounts for the given period.<br><br>By default, min_date and max_date are the current month, and period is a single month.<br><br>The period is composed with units (days, months, years) and numbers. You can give for example \"1month\", \"15days\", \"1year6months\", etc.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximal (inclusive) date
    # @option opts [String] :period split output with the given period (default: month)
    # @return [nil]
    def users_id_user_accounts_id_account_balances_get(id_user, id_account, opts = {})
      users_id_user_accounts_id_account_balances_get_with_http_info(id_user, id_account, opts)
      return nil
    end

    # Get balances of accounts
    # Get balance (income/outcome/balance) of enabled accounts for the given period.&lt;br&gt;&lt;br&gt;By default, min_date and max_date are the current month, and period is a single month.&lt;br&gt;&lt;br&gt;The period is composed with units (days, months, years) and numbers. You can give for example \&quot;1month\&quot;, \&quot;15days\&quot;, \&quot;1year6months\&quot;, etc.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximal (inclusive) date
    # @option opts [String] :period split output with the given period (default: month)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_accounts_id_account_balances_get_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_accounts_id_account_balances_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_accounts_id_account_balances_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling PFMApi.users_id_user_accounts_id_account_balances_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/balances".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

      # query parameters
      query_params = {}
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
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_accounts_id_account_balances_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of configurated alerts
    # <br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20022]
    def users_id_user_accounts_id_account_operationsalert_get(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_operationsalert_get_with_http_info(id_user, id_account, opts)
      return data
    end

    # Get a list of configurated alerts
    # &lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20022, Fixnum, Hash)>] InlineResponse20022 data, response status code and response headers
    def users_id_user_accounts_id_account_operationsalert_get_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_accounts_id_account_operationsalert_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_accounts_id_account_operationsalert_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling PFMApi.users_id_user_accounts_id_account_operationsalert_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/operationsalert".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        :return_type => 'InlineResponse20022')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_accounts_id_account_operationsalert_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an alert on transactions or investemens
    # <br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [UserAlert]
    def users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete(id_user, id_account, id_operationsalert, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete_with_http_info(id_user, id_account, id_operationsalert, opts)
      return data
    end

    # Delete an alert on transactions or investemens
    # &lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(UserAlert, Fixnum, Hash)>] UserAlert data, response status code and response headers
    def users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete_with_http_info(id_user, id_account, id_operationsalert, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling PFMApi.users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete"
      end
      # verify the required parameter 'id_operationsalert' is set
      if @api_client.config.client_side_validation && id_operationsalert.nil?
        fail ArgumentError, "Missing the required parameter 'id_operationsalert' when calling PFMApi.users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/operationsalert/{id_operationsalert}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_operationsalert' + '}', id_operationsalert.to_s)

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
        :return_type => 'UserAlert')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_accounts_id_account_operationsalert_id_operationsalert_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit an alert on transactions or investemens
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [UserAlert]
    def users_id_user_accounts_id_account_operationsalert_id_operationsalert_put(id_user, id_account, id_operationsalert, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_operationsalert_id_operationsalert_put_with_http_info(id_user, id_account, id_operationsalert, opts)
      return data
    end

    # Edit an alert on transactions or investemens
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [Array<(UserAlert, Fixnum, Hash)>] UserAlert data, response status code and response headers
    def users_id_user_accounts_id_account_operationsalert_id_operationsalert_put_with_http_info(id_user, id_account, id_operationsalert, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_accounts_id_account_operationsalert_id_operationsalert_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_accounts_id_account_operationsalert_id_operationsalert_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling PFMApi.users_id_user_accounts_id_account_operationsalert_id_operationsalert_put"
      end
      # verify the required parameter 'id_operationsalert' is set
      if @api_client.config.client_side_validation && id_operationsalert.nil?
        fail ArgumentError, "Missing the required parameter 'id_operationsalert' when calling PFMApi.users_id_user_accounts_id_account_operationsalert_id_operationsalert_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/operationsalert/{id_operationsalert}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_operationsalert' + '}', id_operationsalert.to_s)

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
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["income_max"] = opts[:'income_max'] if !opts[:'income_max'].nil?
      form_params["expense_max"] = opts[:'expense_max'] if !opts[:'expense_max'].nil?
      form_params["value_type"] = opts[:'value_type'] if !opts[:'value_type'].nil?
      form_params["date_range"] = opts[:'date_range'] if !opts[:'date_range'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserAlert')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_accounts_id_account_operationsalert_id_operationsalert_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an alert on transactions or investemens of a given user
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [UserAlert]
    def users_id_user_accounts_id_account_operationsalert_post(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_operationsalert_post_with_http_info(id_user, id_account, opts)
      return data
    end

    # Create an alert on transactions or investemens of a given user
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [Array<(UserAlert, Fixnum, Hash)>] UserAlert data, response status code and response headers
    def users_id_user_accounts_id_account_operationsalert_post_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_accounts_id_account_operationsalert_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_accounts_id_account_operationsalert_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling PFMApi.users_id_user_accounts_id_account_operationsalert_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/operationsalert".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["income_max"] = opts[:'income_max'] if !opts[:'income_max'].nil?
      form_params["expense_max"] = opts[:'expense_max'] if !opts[:'expense_max'].nil?
      form_params["value_type"] = opts[:'value_type'] if !opts[:'value_type'].nil?
      form_params["date_range"] = opts[:'date_range'] if !opts[:'date_range'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserAlert')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_accounts_id_account_operationsalert_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get alert configuration of a specific account
    # <br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def users_id_user_accountsalert_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_accountsalert_get_with_http_info(id_user, opts)
      return data
    end

    # Get alert configuration of a specific account
    # &lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def users_id_user_accountsalert_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_accountsalert_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_accountsalert_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accountsalert".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_accountsalert_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update alert configuration of an account
    # It updates the alert configuration of a specific account<br><br><br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expense_max threshold from which an alert has to be sent for a high expense
    # @option opts [Integer] :accounts list of accounts (id coma separated) on wich the alert has to be applied. If &#39;all&#39; is given, it is applied on all accounts. default: all
    # @option opts [Integer] :income_max threshold from which an alert has to be sent for a high income
    # @option opts [Integer] :balance_min2 second threshold from which an alert has to be sent for a low balance
    # @option opts [BOOLEAN] :enabled if false, the alert is not taken into account
    # @return [Object]
    def users_id_user_accountsalert_put(id_user, opts = {})
      data, _status_code, _headers = users_id_user_accountsalert_put_with_http_info(id_user, opts)
      return data
    end

    # Update alert configuration of an account
    # It updates the alert configuration of a specific account&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :expense_max threshold from which an alert has to be sent for a high expense
    # @option opts [Integer] :accounts list of accounts (id coma separated) on wich the alert has to be applied. If &#39;all&#39; is given, it is applied on all accounts. default: all
    # @option opts [Integer] :income_max threshold from which an alert has to be sent for a high income
    # @option opts [Integer] :balance_min2 second threshold from which an alert has to be sent for a low balance
    # @option opts [BOOLEAN] :enabled if false, the alert is not taken into account
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def users_id_user_accountsalert_put_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_accountsalert_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_accountsalert_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/accountsalert".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["expense_max"] = opts[:'expense_max'] if !opts[:'expense_max'].nil?
      form_params["accounts"] = opts[:'accounts'] if !opts[:'accounts'].nil?
      form_params["income_max"] = opts[:'income_max'] if !opts[:'income_max'].nil?
      form_params["balance_min2"] = opts[:'balance_min2'] if !opts[:'balance_min2'].nil?
      form_params["enabled"] = opts[:'enabled'] if !opts[:'enabled'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_accountsalert_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get balances of accounts
    # Get balance (income/outcome/balance) of enabled accounts for the given period.<br><br>By default, min_date and max_date are the current month, and period is a single month.<br><br>The period is composed with units (days, months, years) and numbers. You can give for example \"1month\", \"15days\", \"1year6months\", etc.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximal (inclusive) date
    # @option opts [String] :period split output with the given period (default: month)
    # @return [nil]
    def users_id_user_balances_get(id_user, opts = {})
      users_id_user_balances_get_with_http_info(id_user, opts)
      return nil
    end

    # Get balances of accounts
    # Get balance (income/outcome/balance) of enabled accounts for the given period.&lt;br&gt;&lt;br&gt;By default, min_date and max_date are the current month, and period is a single month.&lt;br&gt;&lt;br&gt;The period is composed with units (days, months, years) and numbers. You can give for example \&quot;1month\&quot;, \&quot;15days\&quot;, \&quot;1year6months\&quot;, etc.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximal (inclusive) date
    # @option opts [String] :period split output with the given period (default: month)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_balances_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_balances_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_balances_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/balances".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}
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
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_balances_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get balances of accounts
    # Get balance (income/outcome/balance) of enabled accounts for the given period.<br><br>By default, min_date and max_date are the current month, and period is a single month.<br><br>The period is composed with units (days, months, years) and numbers. You can give for example \"1month\", \"15days\", \"1year6months\", etc.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximal (inclusive) date
    # @option opts [String] :period split output with the given period (default: month)
    # @return [nil]
    def users_id_user_connections_id_connection_accounts_id_account_balances_get(id_user, id_connection, id_account, opts = {})
      users_id_user_connections_id_connection_accounts_id_account_balances_get_with_http_info(id_user, id_connection, id_account, opts)
      return nil
    end

    # Get balances of accounts
    # Get balance (income/outcome/balance) of enabled accounts for the given period.&lt;br&gt;&lt;br&gt;By default, min_date and max_date are the current month, and period is a single month.&lt;br&gt;&lt;br&gt;The period is composed with units (days, months, years) and numbers. You can give for example \&quot;1month\&quot;, \&quot;15days\&quot;, \&quot;1year6months\&quot;, etc.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximal (inclusive) date
    # @option opts [String] :period split output with the given period (default: month)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_balances_get_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_connections_id_connection_accounts_id_account_balances_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_balances_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_balances_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_balances_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/balances".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

      # query parameters
      query_params = {}
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
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_connections_id_connection_accounts_id_account_balances_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of configurated alerts
    # <br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20022]
    def users_id_user_connections_id_connection_accounts_id_account_operationsalert_get(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_operationsalert_get_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Get a list of configurated alerts
    # &lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20022, Fixnum, Hash)>] InlineResponse20022 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_operationsalert_get_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        :return_type => 'InlineResponse20022')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_connections_id_connection_accounts_id_account_operationsalert_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an alert on transactions or investemens
    # <br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [UserAlert]
    def users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete(id_user, id_connection, id_account, id_operationsalert, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete_with_http_info(id_user, id_connection, id_account, id_operationsalert, opts)
      return data
    end

    # Delete an alert on transactions or investemens
    # &lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(UserAlert, Fixnum, Hash)>] UserAlert data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete_with_http_info(id_user, id_connection, id_account, id_operationsalert, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete"
      end
      # verify the required parameter 'id_operationsalert' is set
      if @api_client.config.client_side_validation && id_operationsalert.nil?
        fail ArgumentError, "Missing the required parameter 'id_operationsalert' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert/{id_operationsalert}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_operationsalert' + '}', id_operationsalert.to_s)

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
        :return_type => 'UserAlert')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit an alert on transactions or investemens
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [UserAlert]
    def users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put(id_user, id_connection, id_account, id_operationsalert, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put_with_http_info(id_user, id_connection, id_account, id_operationsalert, opts)
      return data
    end

    # Edit an alert on transactions or investemens
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [Array<(UserAlert, Fixnum, Hash)>] UserAlert data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put_with_http_info(id_user, id_connection, id_account, id_operationsalert, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put"
      end
      # verify the required parameter 'id_operationsalert' is set
      if @api_client.config.client_side_validation && id_operationsalert.nil?
        fail ArgumentError, "Missing the required parameter 'id_operationsalert' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert/{id_operationsalert}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_operationsalert' + '}', id_operationsalert.to_s)

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
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["income_max"] = opts[:'income_max'] if !opts[:'income_max'].nil?
      form_params["expense_max"] = opts[:'expense_max'] if !opts[:'expense_max'].nil?
      form_params["value_type"] = opts[:'value_type'] if !opts[:'value_type'].nil?
      form_params["date_range"] = opts[:'date_range'] if !opts[:'date_range'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserAlert')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_connections_id_connection_accounts_id_account_operationsalert_id_operationsalert_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an alert on transactions or investemens of a given user
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [UserAlert]
    def users_id_user_connections_id_connection_accounts_id_account_operationsalert_post(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_operationsalert_post_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Create an alert on transactions or investemens of a given user
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [Array<(UserAlert, Fixnum, Hash)>] UserAlert data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_operationsalert_post_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling PFMApi.users_id_user_connections_id_connection_accounts_id_account_operationsalert_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/operationsalert".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["income_max"] = opts[:'income_max'] if !opts[:'income_max'].nil?
      form_params["expense_max"] = opts[:'expense_max'] if !opts[:'expense_max'].nil?
      form_params["value_type"] = opts[:'value_type'] if !opts[:'value_type'].nil?
      form_params["date_range"] = opts[:'date_range'] if !opts[:'date_range'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserAlert')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_connections_id_connection_accounts_id_account_operationsalert_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get balances of accounts
    # Get balance (income/outcome/balance) of enabled accounts for the given period.<br><br>By default, min_date and max_date are the current month, and period is a single month.<br><br>The period is composed with units (days, months, years) and numbers. You can give for example \"1month\", \"15days\", \"1year6months\", etc.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximal (inclusive) date
    # @option opts [String] :period split output with the given period (default: month)
    # @return [nil]
    def users_id_user_connections_id_connection_balances_get(id_user, id_connection, opts = {})
      users_id_user_connections_id_connection_balances_get_with_http_info(id_user, id_connection, opts)
      return nil
    end

    # Get balances of accounts
    # Get balance (income/outcome/balance) of enabled accounts for the given period.&lt;br&gt;&lt;br&gt;By default, min_date and max_date are the current month, and period is a single month.&lt;br&gt;&lt;br&gt;The period is composed with units (days, months, years) and numbers. You can give for example \&quot;1month\&quot;, \&quot;15days\&quot;, \&quot;1year6months\&quot;, etc.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximal (inclusive) date
    # @option opts [String] :period split output with the given period (default: month)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_connections_id_connection_balances_get_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_connections_id_connection_balances_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_connections_id_connection_balances_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling PFMApi.users_id_user_connections_id_connection_balances_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/balances".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

      # query parameters
      query_params = {}
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
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_connections_id_connection_balances_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get devices
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20031]
    def users_id_user_devices_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_devices_get_with_http_info(id_user, opts)
      return data
    end

    # Get devices
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20031, Fixnum, Hash)>] InlineResponse20031 data, response status code and response headers
    def users_id_user_devices_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_devices_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_devices_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/devices".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'InlineResponse20031')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_devices_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete device.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_device 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Device]
    def users_id_user_devices_id_device_delete(id_user, id_device, opts = {})
      data, _status_code, _headers = users_id_user_devices_id_device_delete_with_http_info(id_user, id_device, opts)
      return data
    end

    # Delete device.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_device 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Device, Fixnum, Hash)>] Device data, response status code and response headers
    def users_id_user_devices_id_device_delete_with_http_info(id_user, id_device, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_devices_id_device_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_devices_id_device_delete"
      end
      # verify the required parameter 'id_device' is set
      if @api_client.config.client_side_validation && id_device.nil?
        fail ArgumentError, "Missing the required parameter 'id_device' when calling PFMApi.users_id_user_devices_id_device_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/devices/{id_device}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_device' + '}', id_device.to_s)

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
        :return_type => 'Device')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_devices_id_device_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a device
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_device 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Device]
    def users_id_user_devices_id_device_get(id_user, id_device, opts = {})
      data, _status_code, _headers = users_id_user_devices_id_device_get_with_http_info(id_user, id_device, opts)
      return data
    end

    # Get a device
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_device 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Device, Fixnum, Hash)>] Device data, response status code and response headers
    def users_id_user_devices_id_device_get_with_http_info(id_user, id_device, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_devices_id_device_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_devices_id_device_get"
      end
      # verify the required parameter 'id_device' is set
      if @api_client.config.client_side_validation && id_device.nil?
        fail ArgumentError, "Missing the required parameter 'id_device' when calling PFMApi.users_id_user_devices_id_device_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/devices/{id_device}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_device' + '}', id_device.to_s)

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
        :return_type => 'Device')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_devices_id_device_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update attributes of the device.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_device 
    # @param notification_token the GCM or APNS notification_token to use
    # @param application the device in use
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :notification_version version of notifications
    # @option opts [String] :expand 
    # @return [Device]
    def users_id_user_devices_id_device_put(id_user, id_device, notification_token, application, opts = {})
      data, _status_code, _headers = users_id_user_devices_id_device_put_with_http_info(id_user, id_device, notification_token, application, opts)
      return data
    end

    # Update attributes of the device.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_device 
    # @param notification_token the GCM or APNS notification_token to use
    # @param application the device in use
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :notification_version version of notifications
    # @option opts [String] :expand 
    # @return [Array<(Device, Fixnum, Hash)>] Device data, response status code and response headers
    def users_id_user_devices_id_device_put_with_http_info(id_user, id_device, notification_token, application, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_devices_id_device_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_devices_id_device_put"
      end
      # verify the required parameter 'id_device' is set
      if @api_client.config.client_side_validation && id_device.nil?
        fail ArgumentError, "Missing the required parameter 'id_device' when calling PFMApi.users_id_user_devices_id_device_put"
      end
      # verify the required parameter 'notification_token' is set
      if @api_client.config.client_side_validation && notification_token.nil?
        fail ArgumentError, "Missing the required parameter 'notification_token' when calling PFMApi.users_id_user_devices_id_device_put"
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling PFMApi.users_id_user_devices_id_device_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/devices/{id_device}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_device' + '}', id_device.to_s)

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
      form_params["notification_token"] = notification_token
      form_params["application"] = application
      form_params["notification_version"] = opts[:'notification_version'] if !opts[:'notification_version'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Device')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_devices_id_device_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a device linked to specified token.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param notification_token the GCM or APNS notification_token to use
    # @param application the device in use
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :notification_version version of notifications
    # @option opts [String] :expand 
    # @return [Device]
    def users_id_user_devices_post(id_user, notification_token, application, opts = {})
      data, _status_code, _headers = users_id_user_devices_post_with_http_info(id_user, notification_token, application, opts)
      return data
    end

    # Create a device linked to specified token.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param notification_token the GCM or APNS notification_token to use
    # @param application the device in use
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :notification_version version of notifications
    # @option opts [String] :expand 
    # @return [Array<(Device, Fixnum, Hash)>] Device data, response status code and response headers
    def users_id_user_devices_post_with_http_info(id_user, notification_token, application, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_devices_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_devices_post"
      end
      # verify the required parameter 'notification_token' is set
      if @api_client.config.client_side_validation && notification_token.nil?
        fail ArgumentError, "Missing the required parameter 'notification_token' when calling PFMApi.users_id_user_devices_post"
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling PFMApi.users_id_user_devices_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/devices".sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params["notification_token"] = notification_token
      form_params["application"] = application
      form_params["notification_version"] = opts[:'notification_version'] if !opts[:'notification_version'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Device')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_devices_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get forecast
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_id_user_forecast_get(id_user, opts = {})
      users_id_user_forecast_get_with_http_info(id_user, opts)
      return nil
    end

    # Get forecast
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_forecast_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_forecast_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_forecast_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/forecast".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}

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
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_forecast_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [User]
    def users_id_user_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_get_with_http_info(id_user, opts)
      return data
    end

    # Get a user
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def users_id_user_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_get"
      end
      # resource path
      local_var_path = "/users/{id_user}".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of configurated alerts
    # <br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20022]
    def users_id_user_operationsalert_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_operationsalert_get_with_http_info(id_user, opts)
      return data
    end

    # Get a list of configurated alerts
    # &lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20022, Fixnum, Hash)>] InlineResponse20022 data, response status code and response headers
    def users_id_user_operationsalert_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_operationsalert_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_operationsalert_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/operationsalert".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'InlineResponse20022')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_operationsalert_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an alert on transactions or investemens
    # <br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [UserAlert]
    def users_id_user_operationsalert_id_operationsalert_delete(id_user, id_operationsalert, opts = {})
      data, _status_code, _headers = users_id_user_operationsalert_id_operationsalert_delete_with_http_info(id_user, id_operationsalert, opts)
      return data
    end

    # Delete an alert on transactions or investemens
    # &lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(UserAlert, Fixnum, Hash)>] UserAlert data, response status code and response headers
    def users_id_user_operationsalert_id_operationsalert_delete_with_http_info(id_user, id_operationsalert, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_operationsalert_id_operationsalert_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_operationsalert_id_operationsalert_delete"
      end
      # verify the required parameter 'id_operationsalert' is set
      if @api_client.config.client_side_validation && id_operationsalert.nil?
        fail ArgumentError, "Missing the required parameter 'id_operationsalert' when calling PFMApi.users_id_user_operationsalert_id_operationsalert_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/operationsalert/{id_operationsalert}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_operationsalert' + '}', id_operationsalert.to_s)

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
        :return_type => 'UserAlert')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_operationsalert_id_operationsalert_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit an alert on transactions or investemens
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [UserAlert]
    def users_id_user_operationsalert_id_operationsalert_put(id_user, id_operationsalert, opts = {})
      data, _status_code, _headers = users_id_user_operationsalert_id_operationsalert_put_with_http_info(id_user, id_operationsalert, opts)
      return data
    end

    # Edit an alert on transactions or investemens
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_operationsalert 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [Array<(UserAlert, Fixnum, Hash)>] UserAlert data, response status code and response headers
    def users_id_user_operationsalert_id_operationsalert_put_with_http_info(id_user, id_operationsalert, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_operationsalert_id_operationsalert_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_operationsalert_id_operationsalert_put"
      end
      # verify the required parameter 'id_operationsalert' is set
      if @api_client.config.client_side_validation && id_operationsalert.nil?
        fail ArgumentError, "Missing the required parameter 'id_operationsalert' when calling PFMApi.users_id_user_operationsalert_id_operationsalert_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/operationsalert/{id_operationsalert}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_operationsalert' + '}', id_operationsalert.to_s)

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
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["income_max"] = opts[:'income_max'] if !opts[:'income_max'].nil?
      form_params["expense_max"] = opts[:'expense_max'] if !opts[:'expense_max'].nil?
      form_params["value_type"] = opts[:'value_type'] if !opts[:'value_type'].nil?
      form_params["date_range"] = opts[:'date_range'] if !opts[:'date_range'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserAlert')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_operationsalert_id_operationsalert_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an alert on transactions or investemens of a given user
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [UserAlert]
    def users_id_user_operationsalert_post(id_user, opts = {})
      data, _status_code, _headers = users_id_user_operationsalert_post_with_http_info(id_user, opts)
      return data
    end

    # Create an alert on transactions or investemens of a given user
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type parameter to choose the scope of the alert. accepted: transactions, investements
    # @option opts [Integer] :income_max capital gain thresholds
    # @option opts [Integer] :expense_max capital loss thresholds
    # @option opts [String] :value_type whether the threshold is given in absolut value or percent. accepted: percent, flat
    # @option opts [Integer] :date_range (number of days) range on which the analysis has to be done
    # @option opts [String] :expand 
    # @return [Array<(UserAlert, Fixnum, Hash)>] UserAlert data, response status code and response headers
    def users_id_user_operationsalert_post_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_operationsalert_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_operationsalert_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/operationsalert".sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["income_max"] = opts[:'income_max'] if !opts[:'income_max'].nil?
      form_params["expense_max"] = opts[:'expense_max'] if !opts[:'expense_max'].nil?
      form_params["value_type"] = opts[:'value_type'] if !opts[:'value_type'].nil?
      form_params["date_range"] = opts[:'date_range'] if !opts[:'date_range'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'UserAlert')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_operationsalert_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get profiles
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20032]
    def users_id_user_profiles_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_profiles_get_with_http_info(id_user, opts)
      return data
    end

    # Get profiles
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20032, Fixnum, Hash)>] InlineResponse20032 data, response status code and response headers
    def users_id_user_profiles_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_profiles_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_profiles_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/profiles".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'InlineResponse20032')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_profiles_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a profile
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Profile]
    def users_id_user_profiles_id_profile_get(id_user, id_profile, opts = {})
      data, _status_code, _headers = users_id_user_profiles_id_profile_get_with_http_info(id_user, id_profile, opts)
      return data
    end

    # Get a profile
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Profile, Fixnum, Hash)>] Profile data, response status code and response headers
    def users_id_user_profiles_id_profile_get_with_http_info(id_user, id_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_profiles_id_profile_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_profiles_id_profile_get"
      end
      # verify the required parameter 'id_profile' is set
      if @api_client.config.client_side_validation && id_profile.nil?
        fail ArgumentError, "Missing the required parameter 'id_profile' when calling PFMApi.users_id_user_profiles_id_profile_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/profiles/{id_profile}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_profile' + '}', id_profile.to_s)

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
        :return_type => 'Profile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_profiles_id_profile_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the main profile
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Profile]
    def users_id_user_profiles_main_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_profiles_main_get_with_http_info(id_user, opts)
      return data
    end

    # Get the main profile
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Profile, Fixnum, Hash)>] Profile data, response status code and response headers
    def users_id_user_profiles_main_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_profiles_main_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_profiles_main_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/profiles/main".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'Profile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_profiles_main_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get my profile
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Profile]
    def users_id_user_profiles_me_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_profiles_me_get_with_http_info(id_user, opts)
      return data
    end

    # Get my profile
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Profile, Fixnum, Hash)>] Profile data, response status code and response headers
    def users_id_user_profiles_me_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_profiles_me_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_profiles_me_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/profiles/me".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'Profile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_profiles_me_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Change settings of the profile.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email change email of profile
    # @option opts [String] :password change password of profile
    # @option opts [String] :current_password needed when changing the password or the email
    # @option opts [String] :contact change contact information of a profile
    # @option opts [String] :conf change config of a profile
    # @option opts [BOOLEAN] :state state of the profile
    # @option opts [String] :lang change lang of the profile
    # @option opts [String] :expand 
    # @return [Profile]
    def users_id_user_profiles_me_put(id_user, opts = {})
      data, _status_code, _headers = users_id_user_profiles_me_put_with_http_info(id_user, opts)
      return data
    end

    # Change settings of the profile.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :email change email of profile
    # @option opts [String] :password change password of profile
    # @option opts [String] :current_password needed when changing the password or the email
    # @option opts [String] :contact change contact information of a profile
    # @option opts [String] :conf change config of a profile
    # @option opts [BOOLEAN] :state state of the profile
    # @option opts [String] :lang change lang of the profile
    # @option opts [String] :expand 
    # @return [Array<(Profile, Fixnum, Hash)>] Profile data, response status code and response headers
    def users_id_user_profiles_me_put_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_profiles_me_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_profiles_me_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/profiles/me".sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params["email"] = opts[:'email'] if !opts[:'email'].nil?
      form_params["password"] = opts[:'password'] if !opts[:'password'].nil?
      form_params["current_password"] = opts[:'current_password'] if !opts[:'current_password'].nil?
      form_params["contact"] = opts[:'contact'] if !opts[:'contact'].nil?
      form_params["conf"] = opts[:'conf'] if !opts[:'conf'].nil?
      form_params["state"] = opts[:'state'] if !opts[:'state'].nil?
      form_params["lang"] = opts[:'lang'] if !opts[:'lang'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Profile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_profiles_me_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get synthesis configuration of a specific user
    # <br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def users_id_user_resume_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_resume_get_with_http_info(id_user, opts)
      return data
    end

    # Get synthesis configuration of a specific user
    # &lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def users_id_user_resume_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_resume_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_resume_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/resume".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}

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
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_resume_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update synthesis configuration
    # <br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :resume_enabled whether the synthesis is activated or not
    # @option opts [Integer] :resume_frequency frequency of the synthesis given in days
    # @return [Object]
    def users_id_user_resume_post(id_user, opts = {})
      data, _status_code, _headers = users_id_user_resume_post_with_http_info(id_user, opts)
      return data
    end

    # Update synthesis configuration
    # &lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :resume_enabled whether the synthesis is activated or not
    # @option opts [Integer] :resume_frequency frequency of the synthesis given in days
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def users_id_user_resume_post_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PFMApi.users_id_user_resume_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling PFMApi.users_id_user_resume_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/resume".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json', 'multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["resume_enabled"] = opts[:'resume_enabled'] if !opts[:'resume_enabled'].nil?
      form_params["resume_frequency"] = opts[:'resume_frequency'] if !opts[:'resume_frequency'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PFMApi#users_id_user_resume_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
