# frozen_string_literal: true

require "uri"

module BudgeaClient
  class OIDCApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete the supplied authorized redirect uri
    # 
    # @param id_whitelist 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [OidcWhitelist]
    def oidc_whitelist_id_whitelist_delete(id_whitelist, opts = {})
      data, _status_code, _headers = oidc_whitelist_id_whitelist_delete_with_http_info(id_whitelist, opts)
      return data
    end

    # Delete the supplied authorized redirect uri
    # 
    # @param id_whitelist 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(OidcWhitelist, Fixnum, Hash)>] OidcWhitelist data, response status code and response headers
    def oidc_whitelist_id_whitelist_delete_with_http_info(id_whitelist, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OIDCApi.oidc_whitelist_id_whitelist_delete ..."
      end
      # verify the required parameter 'id_whitelist' is set
      if @api_client.config.client_side_validation && id_whitelist.nil?
        fail ArgumentError, "Missing the required parameter 'id_whitelist' when calling OIDCApi.oidc_whitelist_id_whitelist_delete"
      end
      # resource path
      local_var_path = "/oidc/whitelist/{id_whitelist}".sub('{' + 'id_whitelist' + '}', id_whitelist.to_s)

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
        :return_type => 'OidcWhitelist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OIDCApi#oidc_whitelist_id_whitelist_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a authorized redirect uri
    # Edit the uri for the supplied authorized redirect uri.<br><br>
    # @param id_whitelist 
    # @param redirect_uri new authorized redirect uri
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [OidcWhitelist]
    def oidc_whitelist_id_whitelist_post(id_whitelist, redirect_uri, opts = {})
      data, _status_code, _headers = oidc_whitelist_id_whitelist_post_with_http_info(id_whitelist, redirect_uri, opts)
      return data
    end

    # Edit a authorized redirect uri
    # Edit the uri for the supplied authorized redirect uri.&lt;br&gt;&lt;br&gt;
    # @param id_whitelist 
    # @param redirect_uri new authorized redirect uri
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(OidcWhitelist, Fixnum, Hash)>] OidcWhitelist data, response status code and response headers
    def oidc_whitelist_id_whitelist_post_with_http_info(id_whitelist, redirect_uri, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OIDCApi.oidc_whitelist_id_whitelist_post ..."
      end
      # verify the required parameter 'id_whitelist' is set
      if @api_client.config.client_side_validation && id_whitelist.nil?
        fail ArgumentError, "Missing the required parameter 'id_whitelist' when calling OIDCApi.oidc_whitelist_id_whitelist_post"
      end
      # verify the required parameter 'redirect_uri' is set
      if @api_client.config.client_side_validation && redirect_uri.nil?
        fail ArgumentError, "Missing the required parameter 'redirect_uri' when calling OIDCApi.oidc_whitelist_id_whitelist_post"
      end
      # resource path
      local_var_path = "/oidc/whitelist/{id_whitelist}".sub('{' + 'id_whitelist' + '}', id_whitelist.to_s)

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
      form_params["redirect_uri"] = redirect_uri

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OidcWhitelist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OIDCApi#oidc_whitelist_id_whitelist_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds an authorized redirect uri
    # It requires the authorized redirect uri to be created<br><br>
    # @param redirect_uri authorized redirect uri to be created
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [OidcWhitelist]
    def oidc_whitelist_post(redirect_uri, opts = {})
      data, _status_code, _headers = oidc_whitelist_post_with_http_info(redirect_uri, opts)
      return data
    end

    # Adds an authorized redirect uri
    # It requires the authorized redirect uri to be created&lt;br&gt;&lt;br&gt;
    # @param redirect_uri authorized redirect uri to be created
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(OidcWhitelist, Fixnum, Hash)>] OidcWhitelist data, response status code and response headers
    def oidc_whitelist_post_with_http_info(redirect_uri, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OIDCApi.oidc_whitelist_post ..."
      end
      # verify the required parameter 'redirect_uri' is set
      if @api_client.config.client_side_validation && redirect_uri.nil?
        fail ArgumentError, "Missing the required parameter 'redirect_uri' when calling OIDCApi.oidc_whitelist_post"
      end
      # resource path
      local_var_path = "/oidc/whitelist"

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
      form_params["redirect_uri"] = redirect_uri

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OidcWhitelist')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OIDCApi#oidc_whitelist_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
