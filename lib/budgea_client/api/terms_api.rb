# frozen_string_literal: true

require "uri"

module BudgeaClient
  class TermsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Return the current terms and the content of the associated file
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20016]
    def terms_get(opts = {})
      data, _status_code, _headers = terms_get_with_http_info(opts)
      return data
    end

    # Return the current terms and the content of the associated file
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20016, Fixnum, Hash)>] InlineResponse20016 data, response status code and response headers
    def terms_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TermsApi.terms_get ..."
      end
      # resource path
      local_var_path = "/terms"

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
        :return_type => 'InlineResponse20016')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TermsApi#terms_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register a version of 'Terms of Service' in database
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version Number of version
    # @option opts [String] :file_content file containing the terms, optional
    # @option opts [String] :expand 
    # @return [TermsOfService]
    def terms_post(opts = {})
      data, _status_code, _headers = terms_post_with_http_info(opts)
      return data
    end

    # Register a version of &#39;Terms of Service&#39; in database
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :version Number of version
    # @option opts [String] :file_content file containing the terms, optional
    # @option opts [String] :expand 
    # @return [Array<(TermsOfService, Fixnum, Hash)>] TermsOfService data, response status code and response headers
    def terms_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TermsApi.terms_post ..."
      end
      # resource path
      local_var_path = "/terms"

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
      form_params["version"] = opts[:'version'] if !opts[:'version'].nil?
      form_params["file_content"] = opts[:'file_content'] if !opts[:'file_content'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TermsOfService')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TermsApi#terms_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get active terms object for a specific user, only one terms can be active
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20016]
    def users_id_user_terms_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_terms_get_with_http_info(id_user, opts)
      return data
    end

    # Get active terms object for a specific user, only one terms can be active
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20016, Fixnum, Hash)>] InlineResponse20016 data, response status code and response headers
    def users_id_user_terms_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TermsApi.users_id_user_terms_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TermsApi.users_id_user_terms_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/terms".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'InlineResponse20016')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TermsApi#users_id_user_terms_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Register user's consent for a specific terms id
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_user2 user id (optionnal)
    # @option opts [Integer] :id_terms terms id
    # @option opts [String] :expand 
    # @return [TermsOfService]
    def users_id_user_terms_post(id_user, opts = {})
      data, _status_code, _headers = users_id_user_terms_post_with_http_info(id_user, opts)
      return data
    end

    # Register user&#39;s consent for a specific terms id
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_user2 user id (optionnal)
    # @option opts [Integer] :id_terms terms id
    # @option opts [String] :expand 
    # @return [Array<(TermsOfService, Fixnum, Hash)>] TermsOfService data, response status code and response headers
    def users_id_user_terms_post_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: TermsApi.users_id_user_terms_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling TermsApi.users_id_user_terms_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/terms".sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params["id_user"] = opts[:'id_user2'] if !opts[:'id_user2'].nil?
      form_params["id_terms"] = opts[:'id_terms'] if !opts[:'id_terms'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TermsOfService')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TermsApi#users_id_user_terms_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
