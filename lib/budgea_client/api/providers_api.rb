# frozen_string_literal: true

require "uri"

module BudgeaClient
  class ProvidersApi
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.banks_get ..."
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
        @api_client.config.logger.debug "API called: ProvidersApi#banks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2009]
    def banks_id_bank_logos_get(id_bank, opts = {})
      data, _status_code, _headers = banks_id_bank_logos_get_with_http_info(id_bank, opts)
      return data
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def banks_id_bank_logos_get_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.banks_id_bank_logos_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.banks_id_bank_logos_get"
      end
      # resource path
      local_var_path = "/banks/{id_bank}/logos".sub('{' + 'id_bank' + '}', id_bank.to_s)

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
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#banks_id_bank_logos_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2009]
    def banks_id_bank_logos_main_get(id_bank, opts = {})
      data, _status_code, _headers = banks_id_bank_logos_main_get_with_http_info(id_bank, opts)
      return data
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def banks_id_bank_logos_main_get_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.banks_id_bank_logos_main_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.banks_id_bank_logos_main_get"
      end
      # resource path
      local_var_path = "/banks/{id_bank}/logos/main".sub('{' + 'id_bank' + '}', id_bank.to_s)

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
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#banks_id_bank_logos_main_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2009]
    def banks_id_bank_logos_thumbnail_get(id_bank, opts = {})
      data, _status_code, _headers = banks_id_bank_logos_thumbnail_get_with_http_info(id_bank, opts)
      return data
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def banks_id_bank_logos_thumbnail_get_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.banks_id_bank_logos_thumbnail_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.banks_id_bank_logos_thumbnail_get"
      end
      # resource path
      local_var_path = "/banks/{id_bank}/logos/thumbnail".sub('{' + 'id_bank' + '}', id_bank.to_s)

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
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#banks_id_bank_logos_thumbnail_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.connections_get ..."
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
        @api_client.config.logger.debug "API called: ProvidersApi#connections_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.connectors_get ..."
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
        @api_client.config.logger.debug "API called: ProvidersApi#connectors_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2009]
    def connectors_id_bank_logos_get(id_bank, opts = {})
      data, _status_code, _headers = connectors_id_bank_logos_get_with_http_info(id_bank, opts)
      return data
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def connectors_id_bank_logos_get_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.connectors_id_bank_logos_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.connectors_id_bank_logos_get"
      end
      # resource path
      local_var_path = "/connectors/{id_bank}/logos".sub('{' + 'id_bank' + '}', id_bank.to_s)

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
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#connectors_id_bank_logos_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a single Logo object.
    # 
    # @param id_bank 
    # @param id_logo 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [ConnectorLogo]
    def connectors_id_bank_logos_id_logo_delete(id_bank, id_logo, opts = {})
      data, _status_code, _headers = connectors_id_bank_logos_id_logo_delete_with_http_info(id_bank, id_logo, opts)
      return data
    end

    # Delete a single Logo object.
    # 
    # @param id_bank 
    # @param id_logo 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(ConnectorLogo, Fixnum, Hash)>] ConnectorLogo data, response status code and response headers
    def connectors_id_bank_logos_id_logo_delete_with_http_info(id_bank, id_logo, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.connectors_id_bank_logos_id_logo_delete ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.connectors_id_bank_logos_id_logo_delete"
      end
      # verify the required parameter 'id_logo' is set
      if @api_client.config.client_side_validation && id_logo.nil?
        fail ArgumentError, "Missing the required parameter 'id_logo' when calling ProvidersApi.connectors_id_bank_logos_id_logo_delete"
      end
      # resource path
      local_var_path = "/connectors/{id_bank}/logos/{id_logo}".sub('{' + 'id_bank' + '}', id_bank.to_s).sub('{' + 'id_logo' + '}', id_logo.to_s)

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
        :return_type => 'ConnectorLogo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#connectors_id_bank_logos_id_logo_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update a Bank Logo.
    # This endpoint creates or update a bank logo. This logo is a mapping between a file (/file route) and a bank (/banks route) or a provider (/providers route).<br><br>Form params: - id_file (integer): The id of the file to link with that bank.<br><br>
    # @param id_bank 
    # @param id_logo 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [ConnectorLogo]
    def connectors_id_bank_logos_id_logo_put(id_bank, id_logo, opts = {})
      data, _status_code, _headers = connectors_id_bank_logos_id_logo_put_with_http_info(id_bank, id_logo, opts)
      return data
    end

    # Create or Update a Bank Logo.
    # This endpoint creates or update a bank logo. This logo is a mapping between a file (/file route) and a bank (/banks route) or a provider (/providers route).&lt;br&gt;&lt;br&gt;Form params: - id_file (integer): The id of the file to link with that bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param id_logo 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(ConnectorLogo, Fixnum, Hash)>] ConnectorLogo data, response status code and response headers
    def connectors_id_bank_logos_id_logo_put_with_http_info(id_bank, id_logo, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.connectors_id_bank_logos_id_logo_put ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.connectors_id_bank_logos_id_logo_put"
      end
      # verify the required parameter 'id_logo' is set
      if @api_client.config.client_side_validation && id_logo.nil?
        fail ArgumentError, "Missing the required parameter 'id_logo' when calling ProvidersApi.connectors_id_bank_logos_id_logo_put"
      end
      # resource path
      local_var_path = "/connectors/{id_bank}/logos/{id_logo}".sub('{' + 'id_bank' + '}', id_bank.to_s).sub('{' + 'id_logo' + '}', id_logo.to_s)

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
        :return_type => 'ConnectorLogo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#connectors_id_bank_logos_id_logo_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2009]
    def connectors_id_bank_logos_main_get(id_bank, opts = {})
      data, _status_code, _headers = connectors_id_bank_logos_main_get_with_http_info(id_bank, opts)
      return data
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def connectors_id_bank_logos_main_get_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.connectors_id_bank_logos_main_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.connectors_id_bank_logos_main_get"
      end
      # resource path
      local_var_path = "/connectors/{id_bank}/logos/main".sub('{' + 'id_bank' + '}', id_bank.to_s)

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
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#connectors_id_bank_logos_main_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a Bank Logo
    # This endpoint creates a bank logo. You can either pass a file to as a parameter to insert and link it with the bank or pass an id_file to link a bank with an existing file. Will fail if the file is already linked with that bank.<br><br>Form params: - id_file (integer): The id of the file to link with that bank. - img (string): Path to the image to link with that bank.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [ConnectorLogo]
    def connectors_id_bank_logos_post(id_bank, opts = {})
      data, _status_code, _headers = connectors_id_bank_logos_post_with_http_info(id_bank, opts)
      return data
    end

    # Create a Bank Logo
    # This endpoint creates a bank logo. You can either pass a file to as a parameter to insert and link it with the bank or pass an id_file to link a bank with an existing file. Will fail if the file is already linked with that bank.&lt;br&gt;&lt;br&gt;Form params: - id_file (integer): The id of the file to link with that bank. - img (string): Path to the image to link with that bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(ConnectorLogo, Fixnum, Hash)>] ConnectorLogo data, response status code and response headers
    def connectors_id_bank_logos_post_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.connectors_id_bank_logos_post ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.connectors_id_bank_logos_post"
      end
      # resource path
      local_var_path = "/connectors/{id_bank}/logos".sub('{' + 'id_bank' + '}', id_bank.to_s)

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConnectorLogo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#connectors_id_bank_logos_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create or Update a Bank Logo
    # This endpoint creates or update a bank logo. This logo is a mapping between a file (/file route) and a bank (/banks route) or a provider (/providers route).<br><br>Form params: - id_file (integer): The id of the file to link with that bank.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [ConnectorLogo]
    def connectors_id_bank_logos_put(id_bank, opts = {})
      data, _status_code, _headers = connectors_id_bank_logos_put_with_http_info(id_bank, opts)
      return data
    end

    # Create or Update a Bank Logo
    # This endpoint creates or update a bank logo. This logo is a mapping between a file (/file route) and a bank (/banks route) or a provider (/providers route).&lt;br&gt;&lt;br&gt;Form params: - id_file (integer): The id of the file to link with that bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(ConnectorLogo, Fixnum, Hash)>] ConnectorLogo data, response status code and response headers
    def connectors_id_bank_logos_put_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.connectors_id_bank_logos_put ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.connectors_id_bank_logos_put"
      end
      # resource path
      local_var_path = "/connectors/{id_bank}/logos".sub('{' + 'id_bank' + '}', id_bank.to_s)

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
        :return_type => 'ConnectorLogo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#connectors_id_bank_logos_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2009]
    def connectors_id_bank_logos_thumbnail_get(id_bank, opts = {})
      data, _status_code, _headers = connectors_id_bank_logos_thumbnail_get_with_http_info(id_bank, opts)
      return data
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def connectors_id_bank_logos_thumbnail_get_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.connectors_id_bank_logos_thumbnail_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.connectors_id_bank_logos_thumbnail_get"
      end
      # resource path
      local_var_path = "/connectors/{id_bank}/logos/thumbnail".sub('{' + 'id_bank' + '}', id_bank.to_s)

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
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#connectors_id_bank_logos_thumbnail_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.connectors_post ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ProvidersApi.connectors_post"
      end
      # verify the required parameter 'login' is set
      if @api_client.config.client_side_validation && login.nil?
        fail ArgumentError, "Missing the required parameter 'login' when calling ProvidersApi.connectors_post"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling ProvidersApi.connectors_post"
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
        @api_client.config.logger.debug "API called: ProvidersApi#connectors_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get document types
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20013]
    def documenttypes_get(opts = {})
      data, _status_code, _headers = documenttypes_get_with_http_info(opts)
      return data
    end

    # Get document types
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20013, Fixnum, Hash)>] InlineResponse20013 data, response status code and response headers
    def documenttypes_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.documenttypes_get ..."
      end
      # resource path
      local_var_path = "/documenttypes"

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
        :return_type => 'InlineResponse20013')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#documenttypes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document type
    # Change value of a document type.<br><br>
    # @param id_documenttype 
    # @param name Displayed name of document type
    # @param attacheable If true, documents of this type can be attached to a transaction, and have amount related meta-data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [DocumentType]
    def documenttypes_id_documenttype_put(id_documenttype, name, attacheable, opts = {})
      data, _status_code, _headers = documenttypes_id_documenttype_put_with_http_info(id_documenttype, name, attacheable, opts)
      return data
    end

    # Edit a document type
    # Change value of a document type.&lt;br&gt;&lt;br&gt;
    # @param id_documenttype 
    # @param name Displayed name of document type
    # @param attacheable If true, documents of this type can be attached to a transaction, and have amount related meta-data
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(DocumentType, Fixnum, Hash)>] DocumentType data, response status code and response headers
    def documenttypes_id_documenttype_put_with_http_info(id_documenttype, name, attacheable, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.documenttypes_id_documenttype_put ..."
      end
      # verify the required parameter 'id_documenttype' is set
      if @api_client.config.client_side_validation && id_documenttype.nil?
        fail ArgumentError, "Missing the required parameter 'id_documenttype' when calling ProvidersApi.documenttypes_id_documenttype_put"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling ProvidersApi.documenttypes_id_documenttype_put"
      end
      # verify the required parameter 'attacheable' is set
      if @api_client.config.client_side_validation && attacheable.nil?
        fail ArgumentError, "Missing the required parameter 'attacheable' when calling ProvidersApi.documenttypes_id_documenttype_put"
      end
      # resource path
      local_var_path = "/documenttypes/{id_documenttype}".sub('{' + 'id_documenttype' + '}', id_documenttype.to_s)

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
      form_params["name"] = name
      form_params["attacheable"] = attacheable

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DocumentType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#documenttypes_id_documenttype_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.logs_get ..."
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
        @api_client.config.logger.debug "API called: ProvidersApi#logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Post an image with OCR
    # Post an image and apply OCR on it to obtain found meta-data.<br><br>
    # @param file File of the document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_transaction Transaction used to help OCR to find data
    # @option opts [String] :name Name of the document
    # @return [nil]
    def ocr_post(file, opts = {})
      ocr_post_with_http_info(file, opts)
      return nil
    end

    # Post an image with OCR
    # Post an image and apply OCR on it to obtain found meta-data.&lt;br&gt;&lt;br&gt;
    # @param file File of the document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_transaction Transaction used to help OCR to find data
    # @option opts [String] :name Name of the document
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def ocr_post_with_http_info(file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.ocr_post ..."
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling ProvidersApi.ocr_post"
      end
      # resource path
      local_var_path = "/ocr"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["file"] = file
      form_params["id_transaction"] = opts[:'id_transaction'] if !opts[:'id_transaction'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

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
        @api_client.config.logger.debug "API called: ProvidersApi#ocr_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.providers_get ..."
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
        @api_client.config.logger.debug "API called: ProvidersApi#providers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2009]
    def providers_id_bank_logos_get(id_bank, opts = {})
      data, _status_code, _headers = providers_id_bank_logos_get_with_http_info(id_bank, opts)
      return data
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def providers_id_bank_logos_get_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.providers_id_bank_logos_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.providers_id_bank_logos_get"
      end
      # resource path
      local_var_path = "/providers/{id_bank}/logos".sub('{' + 'id_bank' + '}', id_bank.to_s)

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
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#providers_id_bank_logos_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2009]
    def providers_id_bank_logos_main_get(id_bank, opts = {})
      data, _status_code, _headers = providers_id_bank_logos_main_get_with_http_info(id_bank, opts)
      return data
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def providers_id_bank_logos_main_get_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.providers_id_bank_logos_main_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.providers_id_bank_logos_main_get"
      end
      # resource path
      local_var_path = "/providers/{id_bank}/logos/main".sub('{' + 'id_bank' + '}', id_bank.to_s)

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
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#providers_id_bank_logos_main_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.<br><br>
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse2009]
    def providers_id_bank_logos_thumbnail_get(id_bank, opts = {})
      data, _status_code, _headers = providers_id_bank_logos_thumbnail_get_with_http_info(id_bank, opts)
      return data
    end

    # Get all links to the files associated with this bank.
    # This endpoint returns all links to files associated with this bank.&lt;br&gt;&lt;br&gt;
    # @param id_bank 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse2009, Fixnum, Hash)>] InlineResponse2009 data, response status code and response headers
    def providers_id_bank_logos_thumbnail_get_with_http_info(id_bank, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.providers_id_bank_logos_thumbnail_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling ProvidersApi.providers_id_bank_logos_thumbnail_get"
      end
      # resource path
      local_var_path = "/providers/{id_bank}/logos/thumbnail".sub('{' + 'id_bank' + '}', id_bank.to_s)

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
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#providers_id_bank_logos_thumbnail_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_delete(id_user, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_documents_delete_with_http_info(id_user, id_account, id_transaction, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_delete_with_http_info(id_user, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_get(id_user, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_documents_get_with_http_info(id_user, id_account, id_transaction, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_get_with_http_info(id_user, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete(id_user, id_account, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete_with_http_info(id_user, id_account, id_transaction, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete_with_http_info(id_user, id_account, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put(id_user, id_account, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put_with_http_info(id_user, id_account, id_transaction, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put_with_http_info(id_user, id_account, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_post(id_user, id_account, id_transaction, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_documents_post_with_http_info(id_user, id_account, id_transaction, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_post_with_http_info(id_user, id_account, id_transaction, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_put(id_user, id_account, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_documents_put_with_http_info(id_user, id_account, id_transaction, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_documents_put_with_http_info(id_user, id_account, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_account, id_transactions_cluster, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete_with_http_info(id_user, id_account, id_transactions_cluster, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete_with_http_info(id_user, id_account, id_transactions_cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_account, id_transactions_cluster, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get_with_http_info(id_user, id_account, id_transactions_cluster, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get_with_http_info(id_user, id_account, id_transactions_cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_account, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete_with_http_info(id_user, id_account, id_transactions_cluster, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete_with_http_info(id_user, id_account, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_account, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put_with_http_info(id_user, id_account, id_transactions_cluster, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put_with_http_info(id_user, id_account, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_account, id_transactions_cluster, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post_with_http_info(id_user, id_account, id_transactions_cluster, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post_with_http_info(id_user, id_account, id_transactions_cluster, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_account, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put_with_http_info(id_user, id_account, id_transactions_cluster, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put_with_http_info(id_user, id_account, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_delete"
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
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_get"
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
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete(id_user, id_connection, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete_with_http_info(id_user, id_connection, id_account, id_transaction, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete_with_http_info(id_user, id_connection, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get(id_user, id_connection, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get_with_http_info(id_user, id_connection, id_account, id_transaction, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get_with_http_info(id_user, id_connection, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete(id_user, id_connection, id_account, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete_with_http_info(id_user, id_connection, id_account, id_transaction, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete_with_http_info(id_user, id_connection, id_account, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put(id_user, id_connection, id_account, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put_with_http_info(id_user, id_connection, id_account, id_transaction, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put_with_http_info(id_user, id_connection, id_account, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post(id_user, id_connection, id_account, id_transaction, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post_with_http_info(id_user, id_connection, id_account, id_transaction, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post_with_http_info(id_user, id_connection, id_account, id_transaction, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put(id_user, id_connection, id_account, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put_with_http_info(id_user, id_connection, id_account, id_transaction, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put_with_http_info(id_user, id_connection, id_account, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_connection, id_account, id_transactions_cluster, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_connection, id_account, id_transactions_cluster, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_connection, id_account, id_transactions_cluster, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactions_cluster 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put_with_http_info(id_user, id_connection, id_account, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_delete"
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
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_documents_delete(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_documents_delete_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_documents_delete_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_connections_id_connection_documents_get(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_documents_get_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_connections_id_connection_documents_get_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_documents_id_document_delete(id_user, id_connection, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_documents_id_document_delete_with_http_info(id_user, id_connection, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_documents_id_document_delete_with_http_info(id_user, id_connection, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_documents_id_document_put(id_user, id_connection, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_documents_id_document_put_with_http_info(id_user, id_connection, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_documents_id_document_put_with_http_info(id_user, id_connection, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_documents_post(id_user, id_connection, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_documents_post_with_http_info(id_user, id_connection, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_documents_post_with_http_info(id_user, id_connection, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_connections_id_connection_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_connections_id_connection_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_documents_put(id_user, id_connection, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_documents_put_with_http_info(id_user, id_connection, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_documents_put_with_http_info(id_user, id_connection, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_informations_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_informations_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_informations_get"
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
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_informations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_logs_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_logs_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_logs_get"
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
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_post"
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

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
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_put"
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
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a subscription.
    # It deletes a specific subscription If this is the last synced subscription of a connection, it will be removed too.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Subscription]
    def users_id_user_connections_id_connection_subscriptions_id_subscription_delete(id_user, id_connection, id_subscription, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_subscriptions_id_subscription_delete_with_http_info(id_user, id_connection, id_subscription, opts)
      return data
    end

    # Delete a subscription.
    # It deletes a specific subscription If this is the last synced subscription of a connection, it will be removed too.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Subscription, Fixnum, Hash)>] Subscription data, response status code and response headers
    def users_id_user_connections_id_connection_subscriptions_id_subscription_delete_with_http_info(id_user, id_connection, id_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_delete"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

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
        :return_type => 'Subscription')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_subscriptions_id_subscription_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete(id_user, id_connection, id_subscription, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete_with_http_info(id_user, id_connection, id_subscription, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete_with_http_info(id_user, id_connection, id_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get(id_user, id_connection, id_subscription, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get_with_http_info(id_user, id_connection, id_subscription, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get_with_http_info(id_user, id_connection, id_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete(id_user, id_connection, id_subscription, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete_with_http_info(id_user, id_connection, id_subscription, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete_with_http_info(id_user, id_connection, id_subscription, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put(id_user, id_connection, id_subscription, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put_with_http_info(id_user, id_connection, id_subscription, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put_with_http_info(id_user, id_connection, id_subscription, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post(id_user, id_connection, id_subscription, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post_with_http_info(id_user, id_connection, id_subscription, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post_with_http_info(id_user, id_connection, id_subscription, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put(id_user, id_connection, id_subscription, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put_with_http_info(id_user, id_connection, id_subscription, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put_with_http_info(id_user, id_connection, id_subscription, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a subscription
    # It updates a specific subscription<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Label of the subscription
    # @option opts [BOOLEAN] :disabled If the subscription is disabled (not synchronized)
    # @option opts [String] :expand 
    # @return [Subscription]
    def users_id_user_connections_id_connection_subscriptions_id_subscription_put(id_user, id_connection, id_subscription, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_subscriptions_id_subscription_put_with_http_info(id_user, id_connection, id_subscription, opts)
      return data
    end

    # Update a subscription
    # It updates a specific subscription&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Label of the subscription
    # @option opts [BOOLEAN] :disabled If the subscription is disabled (not synchronized)
    # @option opts [String] :expand 
    # @return [Array<(Subscription, Fixnum, Hash)>] Subscription data, response status code and response headers
    def users_id_user_connections_id_connection_subscriptions_id_subscription_put_with_http_info(id_user, id_connection, id_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_put"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_connections_id_connection_subscriptions_id_subscription_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/subscriptions/{id_subscription}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

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
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["disabled"] = opts[:'disabled'] if !opts[:'disabled'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Subscription')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_subscriptions_id_subscription_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_delete(id_user, id_connection, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_documents_delete_with_http_info(id_user, id_connection, id_transaction, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_delete_with_http_info(id_user, id_connection, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_get(id_user, id_connection, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_documents_get_with_http_info(id_user, id_connection, id_transaction, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_get_with_http_info(id_user, id_connection, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete(id_user, id_connection, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete_with_http_info(id_user, id_connection, id_transaction, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete_with_http_info(id_user, id_connection, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put(id_user, id_connection, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put_with_http_info(id_user, id_connection, id_transaction, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put_with_http_info(id_user, id_connection, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_post(id_user, id_connection, id_transaction, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_documents_post_with_http_info(id_user, id_connection, id_transaction, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_post_with_http_info(id_user, id_connection, id_transaction, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_put(id_user, id_connection, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_documents_put_with_http_info(id_user, id_connection, id_transaction, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_documents_put_with_http_info(id_user, id_connection, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_connection, id_transactions_cluster, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete_with_http_info(id_user, id_connection, id_transactions_cluster, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete_with_http_info(id_user, id_connection, id_transactions_cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_connection, id_transactions_cluster, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get_with_http_info(id_user, id_connection, id_transactions_cluster, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get_with_http_info(id_user, id_connection, id_transactions_cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_connection, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete_with_http_info(id_user, id_connection, id_transactions_cluster, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete_with_http_info(id_user, id_connection, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_connection, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put_with_http_info(id_user, id_connection, id_transactions_cluster, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put_with_http_info(id_user, id_connection, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_connection, id_transactions_cluster, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post_with_http_info(id_user, id_connection, id_transactions_cluster, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post_with_http_info(id_user, id_connection, id_transactions_cluster, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_connection, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put_with_http_info(id_user, id_connection, id_transactions_cluster, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactions_cluster 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put_with_http_info(id_user, id_connection, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new connection.
    # Create a new connection to a given bank or provider. You have to give all needed parameters (use /banks/ID/fields or /providers/ID/fields to get them).<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_bank ID of the bank
    # @option opts [String] :birthday bank additional login parameter
    # @option opts [String] :password bank additional login parameter
    # @option opts [String] :oauth_token bank additional login parameter
    # @option opts [String] :oauth_token_secret bank additional login parameter
    # @option opts [String] :auth_type bank additional login parameter
    # @option opts [String] :secret bank additional login parameter
    # @option opts [String] :type bank additional login parameter
    # @option opts [String] :birthdate bank additional login parameter
    # @option opts [String] :nuser bank additional login parameter
    # @option opts [String] :website bank additional login parameter
    # @option opts [String] :password2 bank additional login parameter
    # @option opts [String] :login bank additional login parameter
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
    # @option opts [String] :birthday bank additional login parameter
    # @option opts [String] :password bank additional login parameter
    # @option opts [String] :oauth_token bank additional login parameter
    # @option opts [String] :oauth_token_secret bank additional login parameter
    # @option opts [String] :auth_type bank additional login parameter
    # @option opts [String] :secret bank additional login parameter
    # @option opts [String] :type bank additional login parameter
    # @option opts [String] :birthdate bank additional login parameter
    # @option opts [String] :nuser bank additional login parameter
    # @option opts [String] :website bank additional login parameter
    # @option opts [String] :password2 bank additional login parameter
    # @option opts [String] :login bank additional login parameter
    # @option opts [Integer] :id_provider ID of the provider
    # @option opts [String] :expand 
    # @return [Array<(Connection, Fixnum, Hash)>] Connection data, response status code and response headers
    def users_id_user_connections_post_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_connections_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_connections_post"
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
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["id_bank"] = opts[:'id_bank'] if !opts[:'id_bank'].nil?
      form_params["birthday"] = opts[:'birthday'] if !opts[:'birthday'].nil?
      form_params["password"] = opts[:'password'] if !opts[:'password'].nil?
      form_params["oauth_token"] = opts[:'oauth_token'] if !opts[:'oauth_token'].nil?
      form_params["oauth_token_secret"] = opts[:'oauth_token_secret'] if !opts[:'oauth_token_secret'].nil?
      form_params["auth_type"] = opts[:'auth_type'] if !opts[:'auth_type'].nil?
      form_params["secret"] = opts[:'secret'] if !opts[:'secret'].nil?
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["birthdate"] = opts[:'birthdate'] if !opts[:'birthdate'].nil?
      form_params["nuser"] = opts[:'nuser'] if !opts[:'nuser'].nil?
      form_params["website"] = opts[:'website'] if !opts[:'website'].nil?
      form_params["password"] = opts[:'password2'] if !opts[:'password2'].nil?
      form_params["login"] = opts[:'login'] if !opts[:'login'].nil?
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
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_connections_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_documents_delete(id_user, opts = {})
      data, _status_code, _headers = users_id_user_documents_delete_with_http_info(id_user, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_documents_delete_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/documents".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_documents_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_documents_get_with_http_info(id_user, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_documents_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/documents".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_documents_id_document_delete(id_user, id_document, opts = {})
      data, _status_code, _headers = users_id_user_documents_id_document_delete_with_http_info(id_user, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_documents_id_document_delete_with_http_info(id_user, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_documents_id_document_put(id_user, id_document, opts = {})
      data, _status_code, _headers = users_id_user_documents_id_document_put_with_http_info(id_user, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_documents_id_document_put_with_http_info(id_user, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_documents_post(id_user, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_documents_post_with_http_info(id_user, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_documents_post_with_http_info(id_user, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/documents".sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_documents_put(id_user, id_document, opts = {})
      data, _status_code, _headers = users_id_user_documents_put_with_http_info(id_user, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_documents_put_with_http_info(id_user, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/documents".sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_logs_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_logs_get"
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
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Post an image with OCR
    # Post an image and apply OCR on it to obtain found meta-data.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param file File of the document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_transaction Transaction used to help OCR to find data
    # @option opts [String] :name Name of the document
    # @return [nil]
    def users_id_user_ocr_post(id_user, file, opts = {})
      users_id_user_ocr_post_with_http_info(id_user, file, opts)
      return nil
    end

    # Post an image with OCR
    # Post an image and apply OCR on it to obtain found meta-data.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param file File of the document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_transaction Transaction used to help OCR to find data
    # @option opts [String] :name Name of the document
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_ocr_post_with_http_info(id_user, file, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_ocr_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_ocr_post"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling ProvidersApi.users_id_user_ocr_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/ocr".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['multipart/form-data'])

      # form parameters
      form_params = {}
      form_params["file"] = file
      form_params["id_transaction"] = opts[:'id_transaction'] if !opts[:'id_transaction'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

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
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_ocr_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a subscription.
    # It deletes a specific subscription If this is the last synced subscription of a connection, it will be removed too.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Subscription]
    def users_id_user_subscriptions_id_subscription_delete(id_user, id_subscription, opts = {})
      data, _status_code, _headers = users_id_user_subscriptions_id_subscription_delete_with_http_info(id_user, id_subscription, opts)
      return data
    end

    # Delete a subscription.
    # It deletes a specific subscription If this is the last synced subscription of a connection, it will be removed too.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Subscription, Fixnum, Hash)>] Subscription data, response status code and response headers
    def users_id_user_subscriptions_id_subscription_delete_with_http_info(id_user, id_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_subscriptions_id_subscription_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_delete"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/subscriptions/{id_subscription}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

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
        :return_type => 'Subscription')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_subscriptions_id_subscription_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_subscriptions_id_subscription_documents_delete(id_user, id_subscription, opts = {})
      data, _status_code, _headers = users_id_user_subscriptions_id_subscription_documents_delete_with_http_info(id_user, id_subscription, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_subscriptions_id_subscription_documents_delete_with_http_info(id_user, id_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_subscriptions_id_subscription_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_delete"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/subscriptions/{id_subscription}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_subscriptions_id_subscription_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_subscriptions_id_subscription_documents_get(id_user, id_subscription, opts = {})
      data, _status_code, _headers = users_id_user_subscriptions_id_subscription_documents_get_with_http_info(id_user, id_subscription, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_subscriptions_id_subscription_documents_get_with_http_info(id_user, id_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_subscriptions_id_subscription_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_get"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/subscriptions/{id_subscription}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_subscriptions_id_subscription_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_subscriptions_id_subscription_documents_id_document_delete(id_user, id_subscription, id_document, opts = {})
      data, _status_code, _headers = users_id_user_subscriptions_id_subscription_documents_id_document_delete_with_http_info(id_user, id_subscription, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_subscriptions_id_subscription_documents_id_document_delete_with_http_info(id_user, id_subscription, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_subscriptions_id_subscription_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_id_document_delete"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/subscriptions/{id_subscription}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_subscriptions_id_subscription_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_subscriptions_id_subscription_documents_id_document_put(id_user, id_subscription, id_document, opts = {})
      data, _status_code, _headers = users_id_user_subscriptions_id_subscription_documents_id_document_put_with_http_info(id_user, id_subscription, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_subscriptions_id_subscription_documents_id_document_put_with_http_info(id_user, id_subscription, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_subscriptions_id_subscription_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_id_document_put"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/subscriptions/{id_subscription}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_subscriptions_id_subscription_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_subscriptions_id_subscription_documents_post(id_user, id_subscription, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_subscriptions_id_subscription_documents_post_with_http_info(id_user, id_subscription, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_subscriptions_id_subscription_documents_post_with_http_info(id_user, id_subscription, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_subscriptions_id_subscription_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/subscriptions/{id_subscription}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_subscriptions_id_subscription_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_subscriptions_id_subscription_documents_put(id_user, id_subscription, id_document, opts = {})
      data, _status_code, _headers = users_id_user_subscriptions_id_subscription_documents_put_with_http_info(id_user, id_subscription, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_subscriptions_id_subscription_documents_put_with_http_info(id_user, id_subscription, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_subscriptions_id_subscription_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_put"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/subscriptions/{id_subscription}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_subscriptions_id_subscription_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a subscription
    # It updates a specific subscription<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Label of the subscription
    # @option opts [BOOLEAN] :disabled If the subscription is disabled (not synchronized)
    # @option opts [String] :expand 
    # @return [Subscription]
    def users_id_user_subscriptions_id_subscription_put(id_user, id_subscription, opts = {})
      data, _status_code, _headers = users_id_user_subscriptions_id_subscription_put_with_http_info(id_user, id_subscription, opts)
      return data
    end

    # Update a subscription
    # It updates a specific subscription&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_subscription 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name Label of the subscription
    # @option opts [BOOLEAN] :disabled If the subscription is disabled (not synchronized)
    # @option opts [String] :expand 
    # @return [Array<(Subscription, Fixnum, Hash)>] Subscription data, response status code and response headers
    def users_id_user_subscriptions_id_subscription_put_with_http_info(id_user, id_subscription, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_subscriptions_id_subscription_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_put"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling ProvidersApi.users_id_user_subscriptions_id_subscription_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/subscriptions/{id_subscription}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_subscription' + '}', id_subscription.to_s)

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
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["disabled"] = opts[:'disabled'] if !opts[:'disabled'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Subscription')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_subscriptions_id_subscription_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_transactions_id_transaction_documents_delete(id_user, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_documents_delete_with_http_info(id_user, id_transaction, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_transactions_id_transaction_documents_delete_with_http_info(id_user, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactions_id_transaction_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactions_id_transaction_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_transactions_id_transaction_documents_get(id_user, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_documents_get_with_http_info(id_user, id_transaction, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_transactions_id_transaction_documents_get_with_http_info(id_user, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactions_id_transaction_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactions_id_transaction_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_transactions_id_transaction_documents_id_document_delete(id_user, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_documents_id_document_delete_with_http_info(id_user, id_transaction, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_transactions_id_transaction_documents_id_document_delete_with_http_info(id_user, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactions_id_transaction_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactions_id_transaction_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_transactions_id_transaction_documents_id_document_put(id_user, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_documents_id_document_put_with_http_info(id_user, id_transaction, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_transactions_id_transaction_documents_id_document_put_with_http_info(id_user, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactions_id_transaction_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactions_id_transaction_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_transactions_id_transaction_documents_post(id_user, id_transaction, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_documents_post_with_http_info(id_user, id_transaction, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_transactions_id_transaction_documents_post_with_http_info(id_user, id_transaction, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactions_id_transaction_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactions_id_transaction_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_transactions_id_transaction_documents_put(id_user, id_transaction, id_document, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_documents_put_with_http_info(id_user, id_transaction, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_transactions_id_transaction_documents_put_with_http_info(id_user, id_transaction, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactions_id_transaction_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_transactions_id_transaction_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactions_id_transaction_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_delete(id_user, id_transactions_cluster, opts = {})
      data, _status_code, _headers = users_id_user_transactionsclusters_id_transactions_cluster_documents_delete_with_http_info(id_user, id_transactions_cluster, opts)
      return data
    end

    # Delete documents
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_delete_with_http_info(id_user, id_transactions_cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get documents
    # Get list of documents<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [InlineResponse20026]
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_get(id_user, id_transactions_cluster, opts = {})
      data, _status_code, _headers = users_id_user_transactionsclusters_id_transactions_cluster_documents_get_with_http_info(id_user, id_transactions_cluster, opts)
      return data
    end

    # Get documents
    # Get list of documents&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [Float] :min_amount minimal (inclusive) amount
    # @option opts [Float] :max_amount maximumd (inclusive) amount
    # @option opts [Float] :min_timestamp minimal (inclusive) timestamp
    # @option opts [Float] :max_timestamp maximumd (inclusive) timestamp
    # @option opts [Integer] :id_type filter with a document type
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20026, Fixnum, Hash)>] InlineResponse20026 data, response status code and response headers
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_get_with_http_info(id_user, id_transactions_cluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'min_amount'] = opts[:'min_amount'] if !opts[:'min_amount'].nil?
      query_params[:'max_amount'] = opts[:'max_amount'] if !opts[:'max_amount'].nil?
      query_params[:'min_timestamp'] = opts[:'min_timestamp'] if !opts[:'min_timestamp'].nil?
      query_params[:'max_timestamp'] = opts[:'max_timestamp'] if !opts[:'max_timestamp'].nil?
      query_params[:'id_type'] = opts[:'id_type'] if !opts[:'id_type'].nil?
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
        :return_type => 'InlineResponse20026')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete(id_user, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete_with_http_info(id_user, id_transactions_cluster, id_document, opts)
      return data
    end

    # Delete a document
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete_with_http_info(id_user, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put(id_user, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put_with_http_info(id_user, id_transactions_cluster, id_document, opts)
      return data
    end

    # Edit a document
    # Edit meta-data of a specific document.
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param id_document 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Date] :date Date of document
    # @option opts [Date] :duedate Due date of document
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [Integer] :income Is an income or an outcome
    # @option opts [Integer] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put_with_http_info(id_user, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents/{id_document}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s).sub('{' + 'id_document' + '}', id_document.to_s)

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
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["date"] = opts[:'date'] if !opts[:'date'].nil?
      form_params["duedate"] = opts[:'duedate'] if !opts[:'duedate'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add a new document
    # Add a new document<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_post(id_user, id_transactions_cluster, date, duedate, opts = {})
      data, _status_code, _headers = users_id_user_transactionsclusters_id_transactions_cluster_documents_post_with_http_info(id_user, id_transactions_cluster, date, duedate, opts)
      return data
    end

    # Add a new document
    # Add a new document&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param date Date of document
    # @param duedate Due date of document
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_type Type of this document
    # @option opts [Integer] :id_category Related category
    # @option opts [Float] :total_amount Taxed amount
    # @option opts [Float] :untaxed_amount Untaxed amount
    # @option opts [Float] :vat VAT amount
    # @option opts [BOOLEAN] :income Is an income or an outcome
    # @option opts [BOOLEAN] :readonly Is this file readonly
    # @option opts [File] :file File of the document
    # @option opts [Integer] :id_ocr Related OCR process
    # @option opts [String] :name Name of the document
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_post_with_http_info(id_user, id_transactions_cluster, date, duedate, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
      form_params["date"] = date
      form_params["duedate"] = duedate
      form_params["id_type"] = opts[:'id_type'] if !opts[:'id_type'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["total_amount"] = opts[:'total_amount'] if !opts[:'total_amount'].nil?
      form_params["untaxed_amount"] = opts[:'untaxed_amount'] if !opts[:'untaxed_amount'].nil?
      form_params["vat"] = opts[:'vat'] if !opts[:'vat'].nil?
      form_params["income"] = opts[:'income'] if !opts[:'income'].nil?
      form_params["readonly"] = opts[:'readonly'] if !opts[:'readonly'].nil?
      form_params["file"] = opts[:'file'] if !opts[:'file'].nil?
      form_params["id_ocr"] = opts[:'id_ocr'] if !opts[:'id_ocr'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Document]
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_put(id_user, id_transactions_cluster, id_document, opts = {})
      data, _status_code, _headers = users_id_user_transactionsclusters_id_transactions_cluster_documents_put_with_http_info(id_user, id_transactions_cluster, id_document, opts)
      return data
    end

    # Attach an existing document to a transaction or a transactions_cluster
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactions_cluster 
    # @param id_document id of the document you want to attach the file to
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Document, Fixnum, Hash)>] Document data, response status code and response headers
    def users_id_user_transactionsclusters_id_transactions_cluster_documents_put_with_http_info(id_user, id_transactions_cluster, id_document, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling ProvidersApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactionsclusters/{id_transactions_cluster}/documents".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transactions_cluster' + '}', id_transactions_cluster.to_s)

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
      form_params["id_document"] = id_document

      # http body (model)
      post_body = nil
      auth_names = ['api_key']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Document')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ProvidersApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
