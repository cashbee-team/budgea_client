# frozen_string_literal: true

require "uri"

module BudgeaClient
  class AdministrationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List clients
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20011]
    def clients_get(opts = {})
      data, _status_code, _headers = clients_get_with_http_info(opts)
      return data
    end

    # List clients
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20011, Fixnum, Hash)>] InlineResponse20011 data, response status code and response headers
    def clients_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.clients_get ..."
      end
      # resource path
      local_var_path = "/clients"

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
        :return_type => 'InlineResponse20011')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#clients_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a client
    # 
    # @param id_client 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Client]
    def clients_id_client_delete(id_client, opts = {})
      data, _status_code, _headers = clients_id_client_delete_with_http_info(id_client, opts)
      return data
    end

    # Delete a client
    # 
    # @param id_client 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Client, Fixnum, Hash)>] Client data, response status code and response headers
    def clients_id_client_delete_with_http_info(id_client, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.clients_id_client_delete ..."
      end
      # verify the required parameter 'id_client' is set
      if @api_client.config.client_side_validation && id_client.nil?
        fail ArgumentError, "Missing the required parameter 'id_client' when calling AdministrationApi.clients_id_client_delete"
      end
      # resource path
      local_var_path = "/clients/{id_client}".sub('{' + 'id_client' + '}', id_client.to_s)

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
        :return_type => 'Client')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#clients_id_client_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get information about a client
    # If you use the manage_token, you will get also the client_secret.<br><br>
    # @param id_client 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Client]
    def clients_id_client_get(id_client, opts = {})
      data, _status_code, _headers = clients_id_client_get_with_http_info(id_client, opts)
      return data
    end

    # Get information about a client
    # If you use the manage_token, you will get also the client_secret.&lt;br&gt;&lt;br&gt;
    # @param id_client 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Client, Fixnum, Hash)>] Client data, response status code and response headers
    def clients_id_client_get_with_http_info(id_client, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.clients_id_client_get ..."
      end
      # verify the required parameter 'id_client' is set
      if @api_client.config.client_side_validation && id_client.nil?
        fail ArgumentError, "Missing the required parameter 'id_client' when calling AdministrationApi.clients_id_client_get"
      end
      # resource path
      local_var_path = "/clients/{id_client}".sub('{' + 'id_client' + '}', id_client.to_s)

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
        :return_type => 'Client')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#clients_id_client_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the client logo
    # 
    # @param id_client 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [File]
    def clients_id_client_logo_delete(id_client, opts = {})
      data, _status_code, _headers = clients_id_client_logo_delete_with_http_info(id_client, opts)
      return data
    end

    # Delete the client logo
    # 
    # @param id_client 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def clients_id_client_logo_delete_with_http_info(id_client, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.clients_id_client_logo_delete ..."
      end
      # verify the required parameter 'id_client' is set
      if @api_client.config.client_side_validation && id_client.nil?
        fail ArgumentError, "Missing the required parameter 'id_client' when calling AdministrationApi.clients_id_client_logo_delete"
      end
      # resource path
      local_var_path = "/clients/{id_client}/logo".sub('{' + 'id_client' + '}', id_client.to_s)

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
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#clients_id_client_logo_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update the client logo
    # 
    # @param id_client 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [File]
    def clients_id_client_logo_post(id_client, opts = {})
      data, _status_code, _headers = clients_id_client_logo_post_with_http_info(id_client, opts)
      return data
    end

    # Update the client logo
    # 
    # @param id_client 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(File, Fixnum, Hash)>] File data, response status code and response headers
    def clients_id_client_logo_post_with_http_info(id_client, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.clients_id_client_logo_post ..."
      end
      # verify the required parameter 'id_client' is set
      if @api_client.config.client_side_validation && id_client.nil?
        fail ArgumentError, "Missing the required parameter 'id_client' when calling AdministrationApi.clients_id_client_logo_post"
      end
      # resource path
      local_var_path = "/clients/{id_client}/logo".sub('{' + 'id_client' + '}', id_client.to_s)

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
        :return_type => 'File')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#clients_id_client_logo_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a client
    # 
    # @param id_client 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name name of client
    # @option opts [BOOLEAN] :secret reset the secret
    # @option opts [String] :redirect_uri redirect_uri
    # @option opts [String] :primary_color hexadecimal code of the client primary color (e.g F45B9A)
    # @option opts [String] :secondary_color hexadecimal code of the client secondary color (e.g F45B9A)
    # @option opts [String] :description text to display as a default description
    # @option opts [String] :description_banks text to display as a description for banks
    # @option opts [String] :description_providers text to display as a description for providers
    # @option opts [BOOLEAN] :pro Wether the client should display the company manager page
    # @option opts [String] :expand 
    # @return [Client]
    def clients_id_client_put(id_client, opts = {})
      data, _status_code, _headers = clients_id_client_put_with_http_info(id_client, opts)
      return data
    end

    # Update a client
    # 
    # @param id_client 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :name name of client
    # @option opts [BOOLEAN] :secret reset the secret
    # @option opts [String] :redirect_uri redirect_uri
    # @option opts [String] :primary_color hexadecimal code of the client primary color (e.g F45B9A)
    # @option opts [String] :secondary_color hexadecimal code of the client secondary color (e.g F45B9A)
    # @option opts [String] :description text to display as a default description
    # @option opts [String] :description_banks text to display as a description for banks
    # @option opts [String] :description_providers text to display as a description for providers
    # @option opts [BOOLEAN] :pro Wether the client should display the company manager page
    # @option opts [String] :expand 
    # @return [Array<(Client, Fixnum, Hash)>] Client data, response status code and response headers
    def clients_id_client_put_with_http_info(id_client, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.clients_id_client_put ..."
      end
      # verify the required parameter 'id_client' is set
      if @api_client.config.client_side_validation && id_client.nil?
        fail ArgumentError, "Missing the required parameter 'id_client' when calling AdministrationApi.clients_id_client_put"
      end
      # resource path
      local_var_path = "/clients/{id_client}".sub('{' + 'id_client' + '}', id_client.to_s)

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
      form_params["secret"] = opts[:'secret'] if !opts[:'secret'].nil?
      form_params["redirect_uri"] = opts[:'redirect_uri'] if !opts[:'redirect_uri'].nil?
      form_params["primary_color"] = opts[:'primary_color'] if !opts[:'primary_color'].nil?
      form_params["secondary_color"] = opts[:'secondary_color'] if !opts[:'secondary_color'].nil?
      form_params["description"] = opts[:'description'] if !opts[:'description'].nil?
      form_params["description_banks"] = opts[:'description_banks'] if !opts[:'description_banks'].nil?
      form_params["description_providers"] = opts[:'description_providers'] if !opts[:'description_providers'].nil?
      form_params["pro"] = opts[:'pro'] if !opts[:'pro'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Client')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#clients_id_client_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create a client
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Client]
    def clients_post(opts = {})
      data, _status_code, _headers = clients_post_with_http_info(opts)
      return data
    end

    # Create a client
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Client, Fixnum, Hash)>] Client data, response status code and response headers
    def clients_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.clients_post ..."
      end
      # resource path
      local_var_path = "/clients"

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
        :return_type => 'Client')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#clients_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get configuration of the API.
    # <br><br>
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search limit the results to keys matching the given value
    # @return [nil]
    def config_get(opts = {})
      config_get_with_http_info(opts)
      return nil
    end

    # Get configuration of the API.
    # &lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search limit the results to keys matching the given value
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def config_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.config_get ..."
      end
      # resource path
      local_var_path = "/config"

      # query parameters
      query_params = {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?

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
        @api_client.config.logger.debug "API called: AdministrationApi#config_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Set a configuration value on the API.
    # Request: { \"bank.connection.disable_new\": \"0\", \"search\": \"bank.connection.disable_new\" }<br><br>
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search limit the results to keys matching the given value
    # @return [Object]
    def config_post(opts = {})
      data, _status_code, _headers = config_post_with_http_info(opts)
      return data
    end

    # Set a configuration value on the API.
    # Request: { \&quot;bank.connection.disable_new\&quot;: \&quot;0\&quot;, \&quot;search\&quot;: \&quot;bank.connection.disable_new\&quot; }&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :search limit the results to keys matching the given value
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def config_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.config_post ..."
      end
      # resource path
      local_var_path = "/config"

      # query parameters
      query_params = {}
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?

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
        :return_type => 'Object')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#config_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # get performances stats on this instance
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :period number on days on which stats on synchronization have to be done per worker (Default: 1)
    # @return [nil]
    def monitoring_get(opts = {})
      monitoring_get_with_http_info(opts)
      return nil
    end

    # get performances stats on this instance
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :period number on days on which stats on synchronization have to be done per worker (Default: 1)
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def monitoring_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.monitoring_get ..."
      end
      # resource path
      local_var_path = "/monitoring"

      # query parameters
      query_params = {}
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
        @api_client.config.logger.debug "API called: AdministrationApi#monitoring_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test synchronization on a random connection.
    # It can be used to test receiving data on your webhooks.<br><br>
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def test_sync_post(opts = {})
      test_sync_post_with_http_info(opts)
      return nil
    end

    # Test synchronization on a random connection.
    # It can be used to test receiving data on your webhooks.&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def test_sync_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.test_sync_post ..."
      end
      # resource path
      local_var_path = "/test/sync"

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#test_sync_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Test synchronization on a random connection.
    # It can be used to test receiving data on your webhooks.<br><br>
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def test_webhooks_post(opts = {})
      test_webhooks_post_with_http_info(opts)
      return nil
    end

    # Test synchronization on a random connection.
    # It can be used to test receiving data on your webhooks.&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def test_webhooks_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.test_webhooks_post ..."
      end
      # resource path
      local_var_path = "/test/webhooks"

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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#test_webhooks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes all webhooks
    # Updates the deleted field with the date of the deletion<br><br>
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Webhook]
    def webhooks_delete(opts = {})
      data, _status_code, _headers = webhooks_delete_with_http_info(opts)
      return data
    end

    # Deletes all webhooks
    # Updates the deleted field with the date of the deletion&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Webhook, Fixnum, Hash)>] Webhook data, response status code and response headers
    def webhooks_delete_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.webhooks_delete ..."
      end
      # resource path
      local_var_path = "/webhooks"

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
        :return_type => 'Webhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#webhooks_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get webhooks
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20033]
    def webhooks_get(opts = {})
      data, _status_code, _headers = webhooks_get_with_http_info(opts)
      return data
    end

    # Get webhooks
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20033, Fixnum, Hash)>] InlineResponse20033 data, response status code and response headers
    def webhooks_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.webhooks_get ..."
      end
      # resource path
      local_var_path = "/webhooks"

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
        :return_type => 'InlineResponse20033')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#webhooks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Deletes a webhook
    # Updates the deleted field with the date of the deletion<br><br>
    # @param id_webhook 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Webhook]
    def webhooks_id_webhook_delete(id_webhook, opts = {})
      data, _status_code, _headers = webhooks_id_webhook_delete_with_http_info(id_webhook, opts)
      return data
    end

    # Deletes a webhook
    # Updates the deleted field with the date of the deletion&lt;br&gt;&lt;br&gt;
    # @param id_webhook 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Webhook, Fixnum, Hash)>] Webhook data, response status code and response headers
    def webhooks_id_webhook_delete_with_http_info(id_webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.webhooks_id_webhook_delete ..."
      end
      # verify the required parameter 'id_webhook' is set
      if @api_client.config.client_side_validation && id_webhook.nil?
        fail ArgumentError, "Missing the required parameter 'id_webhook' when calling AdministrationApi.webhooks_id_webhook_delete"
      end
      # resource path
      local_var_path = "/webhooks/{id_webhook}".sub('{' + 'id_webhook' + '}', id_webhook.to_s)

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
        :return_type => 'Webhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#webhooks_id_webhook_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a webhook
    # 
    # @param id_webhook 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :deleted a date to delete the webhook or &#39;null&#39; to enable it
    # @option opts [Integer] :id_user The user ID to associate with the webhook
    # @option opts [Integer] :id_service The service ID to associate with the webhook
    # @option opts [Float] :url The webhook callback url
    # @option opts [String] :event The webhook event
    # @option opts [String] :expand 
    # @return [Webhook]
    def webhooks_id_webhook_post(id_webhook, opts = {})
      data, _status_code, _headers = webhooks_id_webhook_post_with_http_info(id_webhook, opts)
      return data
    end

    # Updates a webhook
    # 
    # @param id_webhook 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :deleted a date to delete the webhook or &#39;null&#39; to enable it
    # @option opts [Integer] :id_user The user ID to associate with the webhook
    # @option opts [Integer] :id_service The service ID to associate with the webhook
    # @option opts [Float] :url The webhook callback url
    # @option opts [String] :event The webhook event
    # @option opts [String] :expand 
    # @return [Array<(Webhook, Fixnum, Hash)>] Webhook data, response status code and response headers
    def webhooks_id_webhook_post_with_http_info(id_webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.webhooks_id_webhook_post ..."
      end
      # verify the required parameter 'id_webhook' is set
      if @api_client.config.client_side_validation && id_webhook.nil?
        fail ArgumentError, "Missing the required parameter 'id_webhook' when calling AdministrationApi.webhooks_id_webhook_post"
      end
      # resource path
      local_var_path = "/webhooks/{id_webhook}".sub('{' + 'id_webhook' + '}', id_webhook.to_s)

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
      form_params["deleted"] = opts[:'deleted'] if !opts[:'deleted'].nil?
      form_params["id_user"] = opts[:'id_user'] if !opts[:'id_user'].nil?
      form_params["id_service"] = opts[:'id_service'] if !opts[:'id_service'].nil?
      form_params["url"] = opts[:'url'] if !opts[:'url'].nil?
      form_params["event"] = opts[:'event'] if !opts[:'event'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Webhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#webhooks_id_webhook_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updates a webhook
    # 
    # @param id_webhook 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :deleted a date to delete the webhook or &#39;null&#39; to enable it
    # @option opts [Integer] :id_user The user ID to associate with the webhook
    # @option opts [Integer] :id_service The service ID to associate with the webhook
    # @option opts [Float] :url The webhook callback url
    # @option opts [String] :event The webhook event
    # @option opts [String] :expand 
    # @return [Webhook]
    def webhooks_id_webhook_put(id_webhook, opts = {})
      data, _status_code, _headers = webhooks_id_webhook_put_with_http_info(id_webhook, opts)
      return data
    end

    # Updates a webhook
    # 
    # @param id_webhook 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :deleted a date to delete the webhook or &#39;null&#39; to enable it
    # @option opts [Integer] :id_user The user ID to associate with the webhook
    # @option opts [Integer] :id_service The service ID to associate with the webhook
    # @option opts [Float] :url The webhook callback url
    # @option opts [String] :event The webhook event
    # @option opts [String] :expand 
    # @return [Array<(Webhook, Fixnum, Hash)>] Webhook data, response status code and response headers
    def webhooks_id_webhook_put_with_http_info(id_webhook, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.webhooks_id_webhook_put ..."
      end
      # verify the required parameter 'id_webhook' is set
      if @api_client.config.client_side_validation && id_webhook.nil?
        fail ArgumentError, "Missing the required parameter 'id_webhook' when calling AdministrationApi.webhooks_id_webhook_put"
      end
      # resource path
      local_var_path = "/webhooks/{id_webhook}".sub('{' + 'id_webhook' + '}', id_webhook.to_s)

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
      form_params["deleted"] = opts[:'deleted'] if !opts[:'deleted'].nil?
      form_params["id_user"] = opts[:'id_user'] if !opts[:'id_user'].nil?
      form_params["id_service"] = opts[:'id_service'] if !opts[:'id_service'].nil?
      form_params["url"] = opts[:'url'] if !opts[:'url'].nil?
      form_params["event"] = opts[:'event'] if !opts[:'event'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Webhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#webhooks_id_webhook_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Adds a new webhook
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_user The user ID to associate with the webhook
    # @option opts [Integer] :id_service The service ID to associate with the webhook
    # @option opts [Float] :url The webhook callback url
    # @option opts [String] :event The webhook event
    # @option opts [String] :params The webhook parameters as an object with three keys: type, key and value
    # @option opts [String] :expand 
    # @return [Webhook]
    def webhooks_post(opts = {})
      data, _status_code, _headers = webhooks_post_with_http_info(opts)
      return data
    end

    # Adds a new webhook
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :id_user The user ID to associate with the webhook
    # @option opts [Integer] :id_service The service ID to associate with the webhook
    # @option opts [Float] :url The webhook callback url
    # @option opts [String] :event The webhook event
    # @option opts [String] :params The webhook parameters as an object with three keys: type, key and value
    # @option opts [String] :expand 
    # @return [Array<(Webhook, Fixnum, Hash)>] Webhook data, response status code and response headers
    def webhooks_post_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdministrationApi.webhooks_post ..."
      end
      # resource path
      local_var_path = "/webhooks"

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
      form_params["id_user"] = opts[:'id_user'] if !opts[:'id_user'].nil?
      form_params["id_service"] = opts[:'id_service'] if !opts[:'id_service'].nil?
      form_params["url"] = opts[:'url'] if !opts[:'url'].nil?
      form_params["event"] = opts[:'event'] if !opts[:'event'].nil?
      form_params["params"] = opts[:'params'] if !opts[:'params'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Webhook')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdministrationApi#webhooks_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
