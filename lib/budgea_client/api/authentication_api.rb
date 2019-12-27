=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.1

=end

require 'uri'

module BudgeaClient
  class AuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Generate a jwt manage token
    # This endpoint generates a new jwt manage token. It requires an admin manage token to be used<br><br>
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scope scope requested for the token (default: config)
    # @option opts [Integer] :duration number of minute before the token expiration (0 for token that won&#39;t expire unless the client application is deleted) (default: 1)
    # @return [Object]
    def admin_jwt_post(opts = {})
      data, _status_code, _headers = admin_jwt_post_with_http_info(opts)
      data
    end

    # Generate a jwt manage token
    # This endpoint generates a new jwt manage token. It requires an admin manage token to be used&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :scope scope requested for the token (default: config)
    # @option opts [Integer] :duration number of minute before the token expiration (0 for token that won&#39;t expire unless the client application is deleted) (default: 1)
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def admin_jwt_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.admin_jwt_post ...'
      end
      # resource path
      local_var_path = '/admin/jwt'

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
      form_params['scope'] = opts[:'scope'] if !opts[:'scope'].nil?
      form_params['duration'] = opts[:'duration'] if !opts[:'duration'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#admin_jwt_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a new anonymous user
    # This endpoint creates a new temporary token related to a new anonymous user.<br><br>It will expire 30 minutes after.<br><br>Note: if you supply client_id and client_secret, or if you call this endpoint with the manage_token, the token will be permanent.<br><br>
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_id ID of the client
    # @option opts [String] :client_secret secret of the client
    # @return [InlineResponse2002]
    def auth_init_post(opts = {})
      data, _status_code, _headers = auth_init_post_with_http_info(opts)
      data
    end

    # Create a new anonymous user
    # This endpoint creates a new temporary token related to a new anonymous user.&lt;br&gt;&lt;br&gt;It will expire 30 minutes after.&lt;br&gt;&lt;br&gt;Note: if you supply client_id and client_secret, or if you call this endpoint with the manage_token, the token will be permanent.&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_id ID of the client
    # @option opts [String] :client_secret secret of the client
    # @return [Array<(InlineResponse2002, Fixnum, Hash)>] InlineResponse2002 data, response status code and response headers
    def auth_init_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.auth_init_post ...'
      end
      # resource path
      local_var_path = '/auth/init'

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
      form_params['client_id'] = opts[:'client_id'] if !opts[:'client_id'].nil?
      form_params['client_secret'] = opts[:'client_secret'] if !opts[:'client_secret'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2002')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#auth_init_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Generate a user jwt token
    # This endpoint generates a new jwt token for the user. This token will last the time in minutes given by the config key auth.default_token_expire (permanent if this the parameter expire=False is given)<br><br>
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_id id of the client
    # @option opts [String] :client_secret secret for the client
    # @option opts [String] :scope scope requested for the token
    # @option opts [Integer] :id_user user for whom the token has to be generated. If not supplied, a user will be created
    # @option opts [BOOLEAN] :expire if set to True, the token will expire n minutes after its creation, n being the value of configuration key auth.default_token_expire (default: True)
    # @return [InlineResponse2003]
    def auth_jwt_post(opts = {})
      data, _status_code, _headers = auth_jwt_post_with_http_info(opts)
      data
    end

    # Generate a user jwt token
    # This endpoint generates a new jwt token for the user. This token will last the time in minutes given by the config key auth.default_token_expire (permanent if this the parameter expire&#x3D;False is given)&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :client_id id of the client
    # @option opts [String] :client_secret secret for the client
    # @option opts [String] :scope scope requested for the token
    # @option opts [Integer] :id_user user for whom the token has to be generated. If not supplied, a user will be created
    # @option opts [BOOLEAN] :expire if set to True, the token will expire n minutes after its creation, n being the value of configuration key auth.default_token_expire (default: True)
    # @return [Array<(InlineResponse2003, Fixnum, Hash)>] InlineResponse2003 data, response status code and response headers
    def auth_jwt_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.auth_jwt_post ...'
      end
      # resource path
      local_var_path = '/auth/jwt'

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
      form_params['client_id'] = opts[:'client_id'] if !opts[:'client_id'].nil?
      form_params['client_secret'] = opts[:'client_secret'] if !opts[:'client_secret'].nil?
      form_params['scope'] = opts[:'scope'] if !opts[:'scope'].nil?
      form_params['id_user'] = opts[:'id_user'] if !opts[:'id_user'].nil?
      form_params['expire'] = opts[:'expire'] if !opts[:'expire'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2003')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#auth_jwt_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Transform a temporary code to a access_token
    # In order to register a new user with the OAuth 2 process, the client has to call this endpoint to request a granted access_token with the received temporary code.<br><br>
    # @param client_id ID of the client
    # @param client_secret secret of the client
    # @param code user&#39;s temporary code
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type default is \&quot;authorization_code\&quot;
    # @option opts [String] :redirect_uri redirect uri used by user
    # @return [InlineResponse2006]
    def auth_token_access_post(client_id, client_secret, code, opts = {})
      data, _status_code, _headers = auth_token_access_post_with_http_info(client_id, client_secret, code, opts)
      data
    end

    # Transform a temporary code to a access_token
    # In order to register a new user with the OAuth 2 process, the client has to call this endpoint to request a granted access_token with the received temporary code.&lt;br&gt;&lt;br&gt;
    # @param client_id ID of the client
    # @param client_secret secret of the client
    # @param code user&#39;s temporary code
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type default is \&quot;authorization_code\&quot;
    # @option opts [String] :redirect_uri redirect uri used by user
    # @return [Array<(InlineResponse2006, Fixnum, Hash)>] InlineResponse2006 data, response status code and response headers
    def auth_token_access_post_with_http_info(client_id, client_secret, code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.auth_token_access_post ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling AuthenticationApi.auth_token_access_post"
      end
      # verify the required parameter 'client_secret' is set
      if @api_client.config.client_side_validation && client_secret.nil?
        fail ArgumentError, "Missing the required parameter 'client_secret' when calling AuthenticationApi.auth_token_access_post"
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling AuthenticationApi.auth_token_access_post"
      end
      # resource path
      local_var_path = '/auth/token/access'

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
      form_params['client_id'] = client_id
      form_params['client_secret'] = client_secret
      form_params['code'] = code
      form_params['grant_type'] = opts[:'grant_type'] if !opts[:'grant_type'].nil?
      form_params['redirect_uri'] = opts[:'redirect_uri'] if !opts[:'redirect_uri'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2006')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#auth_token_access_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Generate a user temporary token
    # This endpoint generates a new temporary token for the user.<br><br>In case the access_token is used by a trusted device, and you want to let another one (for example a web browser) access to user resources, use this service to create a token which will expire in 30 minutes.<br><br>
    # @param [Hash] opts the optional parameters
    # @return [InlineResponse2007]
    def auth_token_code_get(opts = {})
      data, _status_code, _headers = auth_token_code_get_with_http_info(opts)
      data
    end

    # Generate a user temporary token
    # This endpoint generates a new temporary token for the user.&lt;br&gt;&lt;br&gt;In case the access_token is used by a trusted device, and you want to let another one (for example a web browser) access to user resources, use this service to create a token which will expire in 30 minutes.&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(InlineResponse2007, Fixnum, Hash)>] InlineResponse2007 data, response status code and response headers
    def auth_token_code_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.auth_token_code_get ...'
      end
      # resource path
      local_var_path = '/auth/token/code'

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2007')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#auth_token_code_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Remove user access
    # This endpoint removes the token in use.<br><br>
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def auth_token_delete(opts = {})
      auth_token_delete_with_http_info(opts)
      nil
    end

    # Remove user access
    # This endpoint removes the token in use.&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def auth_token_delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.auth_token_delete ...'
      end
      # resource path
      local_var_path = '/auth/token'

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#auth_token_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get the latest certificate of a type
    # 
    # @param type 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Certificate]
    def certificate_type_get(type, opts = {})
      data, _status_code, _headers = certificate_type_get_with_http_info(type, opts)
      data
    end

    # Get the latest certificate of a type
    # 
    # @param type 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Certificate, Fixnum, Hash)>] Certificate data, response status code and response headers
    def certificate_type_get_with_http_info(type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.certificate_type_get ...'
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling AuthenticationApi.certificate_type_get"
      end
      # resource path
      local_var_path = '/certificate/{type}'.sub('{' + 'type' + '}', type.to_s)

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
        :return_type => 'Certificate')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#certificate_type_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete the user's connections
    # deletes all connections of the user given his hash<br><br>
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def hash_delete(opts = {})
      hash_delete_with_http_info(opts)
      nil
    end

    # Delete the user&#39;s connections
    # deletes all connections of the user given his hash&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def hash_delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.hash_delete ...'
      end
      # resource path
      local_var_path = '/hash'

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
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#hash_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete the user
    # This endpoint deletes the user.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [User]
    def users_id_user_delete(id_user, opts = {})
      data, _status_code, _headers = users_id_user_delete_with_http_info(id_user, opts)
      data
    end

    # Delete the user
    # This endpoint deletes the user.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def users_id_user_delete_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.users_id_user_delete ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling AuthenticationApi.users_id_user_delete"
      end
      # resource path
      local_var_path = '/users/{id_user}'.sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#users_id_user_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
      data
    end

    # Get a user
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(User, Fixnum, Hash)>] User data, response status code and response headers
    def users_id_user_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.users_id_user_get ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling AuthenticationApi.users_id_user_get"
      end
      # resource path
      local_var_path = '/users/{id_user}'.sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'User')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#users_id_user_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a token
    # Create an access_token for this user and get it.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param application application name
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def users_id_user_token_post(id_user, application, opts = {})
      data, _status_code, _headers = users_id_user_token_post_with_http_info(id_user, application, opts)
      data
    end

    # Create a token
    # Create an access_token for this user and get it.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param application application name
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def users_id_user_token_post_with_http_info(id_user, application, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.users_id_user_token_post ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling AuthenticationApi.users_id_user_token_post"
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling AuthenticationApi.users_id_user_token_post"
      end
      # resource path
      local_var_path = '/users/{id_user}/token'.sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params['application'] = application

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#users_id_user_token_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # First step to establish an oAuth2 connection.
    # The route encapsulate 2 functionalities: 1. Create or update a connection through oAuth2 session.<br><br>2. Execute a transfer through OAuth2 session.
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
    def webauth_get(opts = {})
      webauth_get_with_http_info(opts)
      nil
    end

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
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def webauth_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.webauth_get ...'
      end
      # resource path
      local_var_path = '/webauth'

      # query parameters
      query_params = {}
      query_params[:'id_connector'] = opts[:'id_connector'] if !opts[:'id_connector'].nil?
      query_params[:'id_transfer'] = opts[:'id_transfer'] if !opts[:'id_transfer'].nil?
      query_params[:'connector_uuid'] = opts[:'connector_uuid'] if !opts[:'connector_uuid'].nil?
      query_params[:'client_id'] = opts[:'client_id'] if !opts[:'client_id'].nil?
      query_params[:'redirect_uri'] = opts[:'redirect_uri'] if !opts[:'redirect_uri'].nil?
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'fields'] = opts[:'fields'] if !opts[:'fields'].nil?
      query_params[:'id_connection'] = opts[:'id_connection'] if !opts[:'id_connection'].nil?

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
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#webauth_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
