=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.1

=end

require 'uri'

module BudgeaClient
  class UsersManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
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
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.hash_delete ...'
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

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
        @api_client.config.logger.debug "API called: UsersManagementApi#hash_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get users
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search searches a user by mail (if it contains no &#39;@&#39;, &#39;@biapi.pro&#39; will be added at the end)
    # @option opts [String] :expand 
    # @return [InlineResponse20020]
    def users_get(opts = {})
      data, _status_code, _headers = users_get_with_http_info(opts)
      data
    end

    # Get users
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search searches a user by mail (if it contains no &#39;@&#39;, &#39;@biapi.pro&#39; will be added at the end)
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20020, Fixnum, Hash)>] InlineResponse20020 data, response status code and response headers
    def users_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.users_get ...'
      end
      # resource path
      local_var_path = '/users'

      # query parameters
      query_params = {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

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
        :return_type => 'InlineResponse20020')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersManagementApi#users_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete the given user configurations. deletions on keys prefixed by 'biapi.' (except callback_url) are ignored
    # - keys (string): list of coma separated keys to be deleted.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_id_user_config_delete(id_user, opts = {})
      users_id_user_config_delete_with_http_info(id_user, opts)
      nil
    end

    # Delete the given user configurations. deletions on keys prefixed by &#39;biapi.&#39; (except callback_url) are ignored
    # - keys (string): list of coma separated keys to be deleted.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_config_delete_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.users_id_user_config_delete ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling UsersManagementApi.users_id_user_config_delete"
      end
      # resource path
      local_var_path = '/users/{id_user}/config'.sub('{' + 'id_user' + '}', id_user.to_s)

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
        @api_client.config.logger.debug "API called: UsersManagementApi#users_id_user_config_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get configuration of a user.
    # <br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def users_id_user_config_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_config_get_with_http_info(id_user, opts)
      data
    end

    # Get configuration of a user.
    # &lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def users_id_user_config_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.users_id_user_config_get ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling UsersManagementApi.users_id_user_config_get"
      end
      # resource path
      local_var_path = '/users/{id_user}/config'.sub('{' + 'id_user' + '}', id_user.to_s)

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

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersManagementApi#users_id_user_config_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Change configuration of a user. modifications on keys prefixed by 'biapi.' (except callback_url) are ignored
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_id_user_config_post(id_user, opts = {})
      users_id_user_config_post_with_http_info(id_user, opts)
      nil
    end

    # Change configuration of a user. modifications on keys prefixed by &#39;biapi.&#39; (except callback_url) are ignored
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_config_post_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.users_id_user_config_post ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling UsersManagementApi.users_id_user_config_post"
      end
      # resource path
      local_var_path = '/users/{id_user}/config'.sub('{' + 'id_user' + '}', id_user.to_s)

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

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersManagementApi#users_id_user_config_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.users_id_user_delete ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling UsersManagementApi.users_id_user_delete"
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

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
        @api_client.config.logger.debug "API called: UsersManagementApi#users_id_user_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.users_id_user_get ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling UsersManagementApi.users_id_user_get"
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

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
        @api_client.config.logger.debug "API called: UsersManagementApi#users_id_user_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get profiles
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20035]
    def users_id_user_profiles_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_profiles_get_with_http_info(id_user, opts)
      data
    end

    # Get profiles
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20035, Fixnum, Hash)>] InlineResponse20035 data, response status code and response headers
    def users_id_user_profiles_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.users_id_user_profiles_get ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling UsersManagementApi.users_id_user_profiles_get"
      end
      # resource path
      local_var_path = '/users/{id_user}/profiles'.sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

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
        :return_type => 'InlineResponse20035')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersManagementApi#users_id_user_profiles_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
      data
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
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.users_id_user_profiles_id_profile_get ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling UsersManagementApi.users_id_user_profiles_id_profile_get"
      end
      # verify the required parameter 'id_profile' is set
      if @api_client.config.client_side_validation && id_profile.nil?
        fail ArgumentError, "Missing the required parameter 'id_profile' when calling UsersManagementApi.users_id_user_profiles_id_profile_get"
      end
      # resource path
      local_var_path = '/users/{id_user}/profiles/{id_profile}'.sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_profile' + '}', id_profile.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

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
        :return_type => 'Profile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersManagementApi#users_id_user_profiles_id_profile_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
      data
    end

    # Get the main profile
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Profile, Fixnum, Hash)>] Profile data, response status code and response headers
    def users_id_user_profiles_main_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.users_id_user_profiles_main_get ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling UsersManagementApi.users_id_user_profiles_main_get"
      end
      # resource path
      local_var_path = '/users/{id_user}/profiles/main'.sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

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
        :return_type => 'Profile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersManagementApi#users_id_user_profiles_main_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
      data
    end

    # Get my profile
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Profile, Fixnum, Hash)>] Profile data, response status code and response headers
    def users_id_user_profiles_me_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.users_id_user_profiles_me_get ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling UsersManagementApi.users_id_user_profiles_me_get"
      end
      # resource path
      local_var_path = '/users/{id_user}/profiles/me'.sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}
      query_params[:'expand'] = opts[:'expand'] if !opts[:'expand'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

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
        :return_type => 'Profile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersManagementApi#users_id_user_profiles_me_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug 'Calling API: UsersManagementApi.users_id_user_token_post ...'
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling UsersManagementApi.users_id_user_token_post"
      end
      # verify the required parameter 'application' is set
      if @api_client.config.client_side_validation && application.nil?
        fail ArgumentError, "Missing the required parameter 'application' when calling UsersManagementApi.users_id_user_token_post"
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

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
        @api_client.config.logger.debug "API called: UsersManagementApi#users_id_user_token_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
