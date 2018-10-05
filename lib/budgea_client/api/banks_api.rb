# frozen_string_literal: true

require "uri"

module BudgeaClient
  class BanksApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get account types
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse200]
    def account_types_get(opts = {})
      data, _status_code, _headers = account_types_get_with_http_info(opts)
      return data
    end

    # Get account types
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def account_types_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.account_types_get ..."
      end
      # resource path
      local_var_path = "/account_types"

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
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#account_types_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an account type
    # 
    # @param id_account_type 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [AccountType]
    def account_types_id_account_type_get(id_account_type, opts = {})
      data, _status_code, _headers = account_types_id_account_type_get_with_http_info(id_account_type, opts)
      return data
    end

    # Get an account type
    # 
    # @param id_account_type 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(AccountType, Fixnum, Hash)>] AccountType data, response status code and response headers
    def account_types_id_account_type_get_with_http_info(id_account_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.account_types_id_account_type_get ..."
      end
      # verify the required parameter 'id_account_type' is set
      if @api_client.config.client_side_validation && id_account_type.nil?
        fail ArgumentError, "Missing the required parameter 'id_account_type' when calling BanksApi.account_types_id_account_type_get"
      end
      # resource path
      local_var_path = "/account_types/{id_account_type}".sub('{' + 'id_account_type' + '}', id_account_type.to_s)

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
        :return_type => 'AccountType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#account_types_id_account_type_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete the supplied category
    # 
    # @param id_category 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [BankCategory]
    def banks_categories_id_category_delete(id_category, opts = {})
      data, _status_code, _headers = banks_categories_id_category_delete_with_http_info(id_category, opts)
      return data
    end

    # Delete the supplied category
    # 
    # @param id_category 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(BankCategory, Fixnum, Hash)>] BankCategory data, response status code and response headers
    def banks_categories_id_category_delete_with_http_info(id_category, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.banks_categories_id_category_delete ..."
      end
      # verify the required parameter 'id_category' is set
      if @api_client.config.client_side_validation && id_category.nil?
        fail ArgumentError, "Missing the required parameter 'id_category' when calling BanksApi.banks_categories_id_category_delete"
      end
      # resource path
      local_var_path = "/banks/categories/{id_category}".sub('{' + 'id_category' + '}', id_category.to_s)

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
        :return_type => 'BankCategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#banks_categories_id_category_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a bank categories
    # Edit the name for the supplied category.<br><br>
    # @param id_category 
    # @param name new name for the supplied category
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [BankCategory]
    def banks_categories_id_category_post(id_category, name, opts = {})
      data, _status_code, _headers = banks_categories_id_category_post_with_http_info(id_category, name, opts)
      return data
    end

    # Edit a bank categories
    # Edit the name for the supplied category.&lt;br&gt;&lt;br&gt;
    # @param id_category 
    # @param name new name for the supplied category
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(BankCategory, Fixnum, Hash)>] BankCategory data, response status code and response headers
    def banks_categories_id_category_post_with_http_info(id_category, name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.banks_categories_id_category_post ..."
      end
      # verify the required parameter 'id_category' is set
      if @api_client.config.client_side_validation && id_category.nil?
        fail ArgumentError, "Missing the required parameter 'id_category' when calling BanksApi.banks_categories_id_category_post"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BanksApi.banks_categories_id_category_post"
      end
      # resource path
      local_var_path = "/banks/categories/{id_category}".sub('{' + 'id_category' + '}', id_category.to_s)

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BankCategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#banks_categories_id_category_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create bank categories
    # It requires the name of the category to be created<br><br>
    # @param name name of the category to be created
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [BankCategory]
    def banks_categories_post(name, opts = {})
      data, _status_code, _headers = banks_categories_post_with_http_info(name, opts)
      return data
    end

    # Create bank categories
    # It requires the name of the category to be created&lt;br&gt;&lt;br&gt;
    # @param name name of the category to be created
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(BankCategory, Fixnum, Hash)>] BankCategory data, response status code and response headers
    def banks_categories_post_with_http_info(name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.banks_categories_post ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BanksApi.banks_categories_post"
      end
      # resource path
      local_var_path = "/banks/categories"

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

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'BankCategory')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#banks_categories_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
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
        @api_client.config.logger.debug "Calling API: BanksApi.banks_get ..."
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2007')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#banks_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.banks_id_bank_connections_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.banks_id_bank_connections_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2008')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#banks_id_bank_connections_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.banks_id_bank_logos_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.banks_id_bank_logos_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#banks_id_bank_logos_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.banks_id_bank_logos_main_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.banks_id_bank_logos_main_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#banks_id_bank_logos_main_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.banks_id_bank_logos_thumbnail_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.banks_id_bank_logos_thumbnail_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#banks_id_bank_logos_thumbnail_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get all categories
    # Ressource to get all existing categories<br><br>
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20010]
    def categories_get(opts = {})
      data, _status_code, _headers = categories_get_with_http_info(opts)
      return data
    end

    # Get all categories
    # Ressource to get all existing categories&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20010, Fixnum, Hash)>] InlineResponse20010 data, response status code and response headers
    def categories_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.categories_get ..."
      end
      # resource path
      local_var_path = "/categories"

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
        :return_type => 'InlineResponse20010')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#categories_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # categorize transactions without storing them
    # It requires an array of transaction dictionaries. Any fields of transactions that are not required will be kept in the response. The response contains the list of transactions with two more fields: id_category and state (it indicates how the transaction has been categorized)<br><br>
    # @param wording label of the transaction
    # @param value vallue of the transaction
    # @param type type of the transaction (default: unknown)
    # @param [Hash] opts the optional parameters
    # @return [Object]
    def categorize_post(wording, value, type, opts = {})
      data, _status_code, _headers = categorize_post_with_http_info(wording, value, type, opts)
      return data
    end

    # categorize transactions without storing them
    # It requires an array of transaction dictionaries. Any fields of transactions that are not required will be kept in the response. The response contains the list of transactions with two more fields: id_category and state (it indicates how the transaction has been categorized)&lt;br&gt;&lt;br&gt;
    # @param wording label of the transaction
    # @param value vallue of the transaction
    # @param type type of the transaction (default: unknown)
    # @param [Hash] opts the optional parameters
    # @return [Array<(Object, Fixnum, Hash)>] Object data, response status code and response headers
    def categorize_post_with_http_info(wording, value, type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.categorize_post ..."
      end
      # verify the required parameter 'wording' is set
      if @api_client.config.client_side_validation && wording.nil?
        fail ArgumentError, "Missing the required parameter 'wording' when calling BanksApi.categorize_post"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling BanksApi.categorize_post"
      end
      # verify the required parameter 'type' is set
      if @api_client.config.client_side_validation && type.nil?
        fail ArgumentError, "Missing the required parameter 'type' when calling BanksApi.categorize_post"
      end
      # resource path
      local_var_path = "/categorize"

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
      form_params["wording"] = wording
      form_params["value"] = value
      form_params["type"] = type

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
        @api_client.config.logger.debug "API called: BanksApi#categorize_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.connections_get ..."
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2008')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#connections_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.connectors_get ..."
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20012')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#connectors_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.connectors_id_bank_logos_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.connectors_id_bank_logos_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#connectors_id_bank_logos_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.connectors_id_bank_logos_id_logo_delete ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.connectors_id_bank_logos_id_logo_delete"
      end
      # verify the required parameter 'id_logo' is set
      if @api_client.config.client_side_validation && id_logo.nil?
        fail ArgumentError, "Missing the required parameter 'id_logo' when calling BanksApi.connectors_id_bank_logos_id_logo_delete"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConnectorLogo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#connectors_id_bank_logos_id_logo_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.connectors_id_bank_logos_id_logo_put ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.connectors_id_bank_logos_id_logo_put"
      end
      # verify the required parameter 'id_logo' is set
      if @api_client.config.client_side_validation && id_logo.nil?
        fail ArgumentError, "Missing the required parameter 'id_logo' when calling BanksApi.connectors_id_bank_logos_id_logo_put"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConnectorLogo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#connectors_id_bank_logos_id_logo_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.connectors_id_bank_logos_main_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.connectors_id_bank_logos_main_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#connectors_id_bank_logos_main_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.connectors_id_bank_logos_post ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.connectors_id_bank_logos_post"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConnectorLogo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#connectors_id_bank_logos_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.connectors_id_bank_logos_put ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.connectors_id_bank_logos_put"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ConnectorLogo')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#connectors_id_bank_logos_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.connectors_id_bank_logos_thumbnail_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.connectors_id_bank_logos_thumbnail_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#connectors_id_bank_logos_thumbnail_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit the provided bank
    # <br><br>
    # @param id_connector 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id_categories one or several comma separated categories to map to the given bank (or null to map no category)
    # @option opts [BOOLEAN] :hidden to enable  or disable connector (bank or provider)
    # @option opts [Integer] :sync_frequency Allows you to overload global sync_frequency param
    # @option opts [String] :expand 
    # @return [Bank]
    def connectors_id_connector_put(id_connector, opts = {})
      data, _status_code, _headers = connectors_id_connector_put_with_http_info(id_connector, opts)
      return data
    end

    # Edit the provided bank
    # &lt;br&gt;&lt;br&gt;
    # @param id_connector 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :id_categories one or several comma separated categories to map to the given bank (or null to map no category)
    # @option opts [BOOLEAN] :hidden to enable  or disable connector (bank or provider)
    # @option opts [Integer] :sync_frequency Allows you to overload global sync_frequency param
    # @option opts [String] :expand 
    # @return [Array<(Bank, Fixnum, Hash)>] Bank data, response status code and response headers
    def connectors_id_connector_put_with_http_info(id_connector, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.connectors_id_connector_put ..."
      end
      # verify the required parameter 'id_connector' is set
      if @api_client.config.client_side_validation && id_connector.nil?
        fail ArgumentError, "Missing the required parameter 'id_connector' when calling BanksApi.connectors_id_connector_put"
      end
      # resource path
      local_var_path = "/connectors/{id_connector}".sub('{' + 'id_connector' + '}', id_connector.to_s)

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
      form_params["id_categories"] = opts[:'id_categories'] if !opts[:'id_categories'].nil?
      form_params["hidden"] = opts[:'hidden'] if !opts[:'hidden'].nil?
      form_params["sync_frequency"] = opts[:'sync_frequency'] if !opts[:'sync_frequency'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Bank')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#connectors_id_connector_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.connectors_post ..."
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BanksApi.connectors_post"
      end
      # verify the required parameter 'login' is set
      if @api_client.config.client_side_validation && login.nil?
        fail ArgumentError, "Missing the required parameter 'login' when calling BanksApi.connectors_post"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling BanksApi.connectors_post"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Bank')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#connectors_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get number of accounts, connections and users synced.
    # Get number of accounts, connections and users synced between two dates for the given period.<br><br>
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [String] :period period to group logs
    # @option opts [String] :all get full ids list instead of numbers
    # @return [nil]
    def invoicing_get(opts = {})
      invoicing_get_with_http_info(opts)
      return nil
    end

    # Get number of accounts, connections and users synced.
    # Get number of accounts, connections and users synced between two dates for the given period.&lt;br&gt;&lt;br&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [String] :period period to group logs
    # @option opts [String] :all get full ids list instead of numbers
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def invoicing_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.invoicing_get ..."
      end
      # resource path
      local_var_path = "/invoicing"

      # query parameters
      query_params = {}
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'period'] = opts[:'period'] if !opts[:'period'].nil?
      query_params[:'all'] = opts[:'all'] if !opts[:'all'].nil?

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
        @api_client.config.logger.debug "API called: BanksApi#invoicing_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.logs_get ..."
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20015')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.providers_get ..."
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2007')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#providers_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.providers_id_bank_logos_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.providers_id_bank_logos_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#providers_id_bank_logos_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.providers_id_bank_logos_main_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.providers_id_bank_logos_main_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#providers_id_bank_logos_main_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.providers_id_bank_logos_thumbnail_get ..."
      end
      # verify the required parameter 'id_bank' is set
      if @api_client.config.client_side_validation && id_bank.nil?
        fail ArgumentError, "Missing the required parameter 'id_bank' when calling BanksApi.providers_id_bank_logos_thumbnail_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2009')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#providers_id_bank_logos_thumbnail_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get account types
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse200]
    def users_id_user_account_types_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_account_types_get_with_http_info(id_user, opts)
      return data
    end

    # Get account types
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse200, Fixnum, Hash)>] InlineResponse200 data, response status code and response headers
    def users_id_user_account_types_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_account_types_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_account_types_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/account_types".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'InlineResponse200')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_account_types_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get an account type
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account_type 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [AccountType]
    def users_id_user_account_types_id_account_type_get(id_user, id_account_type, opts = {})
      data, _status_code, _headers = users_id_user_account_types_id_account_type_get_with_http_info(id_user, id_account_type, opts)
      return data
    end

    # Get an account type
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account_type 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(AccountType, Fixnum, Hash)>] AccountType data, response status code and response headers
    def users_id_user_account_types_id_account_type_get_with_http_info(id_user, id_account_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_account_types_id_account_type_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_account_types_id_account_type_get"
      end
      # verify the required parameter 'id_account_type' is set
      if @api_client.config.client_side_validation && id_account_type.nil?
        fail ArgumentError, "Missing the required parameter 'id_account_type' when calling BanksApi.users_id_user_account_types_id_account_type_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/account_types/{id_account_type}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account_type' + '}', id_account_type.to_s)

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
        :return_type => 'AccountType')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_account_types_id_account_type_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all accounts
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Account]
    def users_id_user_accounts_delete(id_user, opts = {})
      data, _status_code, _headers = users_id_user_accounts_delete_with_http_info(id_user, opts)
      return data
    end

    # Delete all accounts
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Account, Fixnum, Hash)>] Account data, response status code and response headers
    def users_id_user_accounts_delete_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'Account')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get accounts list.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20018]
    def users_id_user_accounts_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_accounts_get_with_http_info(id_user, opts)
      return data
    end

    # Get accounts list.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20018, Fixnum, Hash)>] InlineResponse20018 data, response status code and response headers
    def users_id_user_accounts_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'InlineResponse20018')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the category
    # Ressource to get categories for the user's transactions<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_id_user_accounts_id_account_categories_get(id_user, id_account, opts = {})
      users_id_user_accounts_id_account_categories_get_with_http_info(id_user, id_account, opts)
      return nil
    end

    # Get the category
    # Ressource to get categories for the user&#39;s transactions&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_accounts_id_account_categories_get_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_categories_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_categories_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_categories_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/categories".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_categories_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an account.
    # It deletes a specific account. If this is the last synced account of a connection, it will be removed too.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Account]
    def users_id_user_accounts_id_account_delete(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_delete_with_http_info(id_user, id_account, opts)
      return data
    end

    # Delete an account.
    # It deletes a specific account. If this is the last synced account of a connection, it will be removed too.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Account, Fixnum, Hash)>] Account data, response status code and response headers
    def users_id_user_accounts_id_account_delete_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        :return_type => 'Account')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get deltas of accounts
    # Get account delta between sums of transactions and difference of account balance for the given period.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [String] :period period to group logs
    # @return [nil]
    def users_id_user_accounts_id_account_delta_get(id_user, id_account, opts = {})
      users_id_user_accounts_id_account_delta_get_with_http_info(id_user, id_account, opts)
      return nil
    end

    # Get deltas of accounts
    # Get account delta between sums of transactions and difference of account balance for the given period.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [String] :period period to group logs
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_accounts_id_account_delta_get_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_delta_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_delta_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_delta_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/delta".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_delta_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get accounts logs.
    # Get logs of account.<br><br>By default, it selects logs for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [String] :expand 
    # @return [InlineResponse20021]
    def users_id_user_accounts_id_account_logs_get(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_logs_get_with_http_info(id_user, id_account, opts)
      return data
    end

    # Get accounts logs.
    # Get logs of account.&lt;br&gt;&lt;br&gt;By default, it selects logs for the last month. You can use \&quot;min_date\&quot; and \&quot;max_date\&quot; to change boundary dates.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20021, Fixnum, Hash)>] InlineResponse20021 data, response status code and response headers
    def users_id_user_accounts_id_account_logs_get_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_logs_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_logs_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_logs_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/logs".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
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
        :return_type => 'InlineResponse20021')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an account
    # It updates a specific account<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :display If the account is displayed
    # @option opts [String] :name Label of the account
    # @option opts [Float] :balance Balance of the account
    # @option opts [BOOLEAN] :disabled If the account is disabled (not synchronized)
    # @option opts [String] :iban IBAN of the account
    # @option opts [BOOLEAN] :bookmarked If the account is bookmarked
    # @option opts [String] :expand 
    # @return [Account]
    def users_id_user_accounts_id_account_put(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_put_with_http_info(id_user, id_account, opts)
      return data
    end

    # Update an account
    # It updates a specific account&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :display If the account is displayed
    # @option opts [String] :name Label of the account
    # @option opts [Float] :balance Balance of the account
    # @option opts [BOOLEAN] :disabled If the account is disabled (not synchronized)
    # @option opts [String] :iban IBAN of the account
    # @option opts [BOOLEAN] :bookmarked If the account is bookmarked
    # @option opts [String] :expand 
    # @return [Array<(Account, Fixnum, Hash)>] Account data, response status code and response headers
    def users_id_user_accounts_id_account_put_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
      form_params["display"] = opts[:'display'] if !opts[:'display'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["balance"] = opts[:'balance'] if !opts[:'balance'].nil?
      form_params["disabled"] = opts[:'disabled'] if !opts[:'disabled'].nil?
      form_params["iban"] = opts[:'iban'] if !opts[:'iban'].nil?
      form_params["bookmarked"] = opts[:'bookmarked'] if !opts[:'bookmarked'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Account')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_accounts_id_account_transactions_delete(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_delete_with_http_info(id_user, id_account, opts)
      return data
    end

    # Delete transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_delete_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactions_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactions_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactions_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactions_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transactions
    # Get list of transactions.<br><br>By default, it selects transactions for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [BOOLEAN] :income filter on income or expenditures
    # @option opts [BOOLEAN] :deleted display only deleted transactions
    # @option opts [BOOLEAN] :all display all transactions, including deleted ones
    # @option opts [DateTime] :last_update get only transactions updated after the specified datetime
    # @option opts [String] :wording filter transactions containing the given string
    # @option opts [Float] :min_value minimal (inclusive) value
    # @option opts [Float] :max_value maximum (inclusive) value
    # @option opts [String] :search search in labels, dates, values and categories
    # @option opts [String] :value \&quot;XX|-XX\&quot; or \&quot;±XX\&quot;
    # @option opts [String] :expand 
    # @return [InlineResponse20025]
    def users_id_user_accounts_id_account_transactions_get(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_get_with_http_info(id_user, id_account, opts)
      return data
    end

    # Get transactions
    # Get list of transactions.&lt;br&gt;&lt;br&gt;By default, it selects transactions for the last month. You can use \&quot;min_date\&quot; and \&quot;max_date\&quot; to change boundary dates.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [BOOLEAN] :income filter on income or expenditures
    # @option opts [BOOLEAN] :deleted display only deleted transactions
    # @option opts [BOOLEAN] :all display all transactions, including deleted ones
    # @option opts [DateTime] :last_update get only transactions updated after the specified datetime
    # @option opts [String] :wording filter transactions containing the given string
    # @option opts [Float] :min_value minimal (inclusive) value
    # @option opts [Float] :max_value maximum (inclusive) value
    # @option opts [String] :search search in labels, dates, values and categories
    # @option opts [String] :value \&quot;XX|-XX\&quot; or \&quot;±XX\&quot;
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20025, Fixnum, Hash)>] InlineResponse20025 data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_get_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactions_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactions_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactions_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'income'] = opts[:'income'] if !opts[:'income'].nil?
      query_params[:'deleted'] = opts[:'deleted'] if !opts[:'deleted'].nil?
      query_params[:'all'] = opts[:'all'] if !opts[:'all'].nil?
      query_params[:'last_update'] = opts[:'last_update'] if !opts[:'last_update'].nil?
      query_params[:'wording'] = opts[:'wording'] if !opts[:'wording'].nil?
      query_params[:'min_value'] = opts[:'min_value'] if !opts[:'min_value'].nil?
      query_params[:'max_value'] = opts[:'max_value'] if !opts[:'max_value'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'value'] = opts[:'value'] if !opts[:'value'].nil?
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
        :return_type => 'InlineResponse20025')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all arbitrary key-value pairs of a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_accounts_id_account_transactions_id_transaction_informations_delete(id_user, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_informations_delete_with_http_info(id_user, id_account, id_transaction, opts)
      return data
    end

    # Delete all arbitrary key-value pairs of a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_informations_delete_with_http_info(id_user, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactions_id_transaction_informations_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all arbitrary key-value pairs on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20027]
    def users_id_user_accounts_id_account_transactions_id_transaction_informations_get(id_user, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_informations_get_with_http_info(id_user, id_account, id_transaction, opts)
      return data
    end

    # List all arbitrary key-value pairs on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_informations_get_with_http_info(id_user, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactions_id_transaction_informations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a particular key-value pair on a transaction.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete(id_user, id_account, id_transaction, id_information, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete_with_http_info(id_user, id_account, id_transaction, id_information, opts)
      return data
    end

    # Delete a particular key-value pair on a transaction.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete_with_http_info(id_user, id_account, id_transaction, id_information, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_information' is set
      if @api_client.config.client_side_validation && id_information.nil?
        fail ArgumentError, "Missing the required parameter 'id_information' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_information' + '}', id_information.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a particular arbitrary key-value pair on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get(id_user, id_account, id_transaction, id_information, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get_with_http_info(id_user, id_account, id_transaction, id_information, opts)
      return data
    end

    # Get a particular arbitrary key-value pair on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get_with_http_info(id_user, id_account, id_transaction, id_information, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_information' is set
      if @api_client.config.client_side_validation && id_information.nil?
        fail ArgumentError, "Missing the required parameter 'id_information' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_information' + '}', id_information.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactions_id_transaction_informations_id_information_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add or edit transaction arbitrary key-value pairs
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_accounts_id_account_transactions_id_transaction_informations_put(id_user, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_informations_put_with_http_info(id_user, id_account, id_transaction, opts)
      return data
    end

    # Add or edit transaction arbitrary key-value pairs
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_informations_put_with_http_info(id_user, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_informations_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactions_id_transaction_informations_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a transaction meta-data
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :wording user rewording of the transaction
    # @option opts [Date] :application_date change application date of the transaction
    # @option opts [Integer] :id_category ID of the associated category
    # @option opts [String] :comment change comment
    # @option opts [BOOLEAN] :active if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances)
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_accounts_id_account_transactions_id_transaction_put(id_user, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_id_transaction_put_with_http_info(id_user, id_account, id_transaction, opts)
      return data
    end

    # Edit a transaction meta-data
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :wording user rewording of the transaction
    # @option opts [Date] :application_date change application date of the transaction
    # @option opts [Integer] :id_category ID of the associated category
    # @option opts [String] :comment change comment
    # @option opts [BOOLEAN] :active if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances)
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_id_transaction_put_with_http_info(id_user, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_accounts_id_account_transactions_id_transaction_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions/{id_transaction}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["wording"] = opts[:'wording'] if !opts[:'wording'].nil?
      form_params["application_date"] = opts[:'application_date'] if !opts[:'application_date'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["comment"] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactions_id_transaction_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create transactions
    # Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.<br><br><br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param original_wording label of the transaction
    # @param value vallue of the transaction
    # @param date date of the transaction
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type type of the transaction (default: unknown)
    # @option opts [String] :state nature of the transaction (default: new)
    # @option opts [Date] :rdate realisation date of the transaction (default: value of date)
    # @option opts [BOOLEAN] :coming 1 if the transaction has already been debited (default: 0)
    # @option opts [BOOLEAN] :active 1 if the transaction should be taken into account by pfm services (default: 1)
    # @option opts [DateTime] :date_scraped date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
    # @option opts [Integer] :id_account2 account of the transaction. If not supplied, it has to be given in the route
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_accounts_id_account_transactions_post(id_user, id_account, original_wording, value, date, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactions_post_with_http_info(id_user, id_account, original_wording, value, date, opts)
      return data
    end

    # Create transactions
    # Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param original_wording label of the transaction
    # @param value vallue of the transaction
    # @param date date of the transaction
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type type of the transaction (default: unknown)
    # @option opts [String] :state nature of the transaction (default: new)
    # @option opts [Date] :rdate realisation date of the transaction (default: value of date)
    # @option opts [BOOLEAN] :coming 1 if the transaction has already been debited (default: 0)
    # @option opts [BOOLEAN] :active 1 if the transaction should be taken into account by pfm services (default: 1)
    # @option opts [DateTime] :date_scraped date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
    # @option opts [Integer] :id_account2 account of the transaction. If not supplied, it has to be given in the route
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_accounts_id_account_transactions_post_with_http_info(id_user, id_account, original_wording, value, date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactions_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactions_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactions_post"
      end
      # verify the required parameter 'original_wording' is set
      if @api_client.config.client_side_validation && original_wording.nil?
        fail ArgumentError, "Missing the required parameter 'original_wording' when calling BanksApi.users_id_user_accounts_id_account_transactions_post"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling BanksApi.users_id_user_accounts_id_account_transactions_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling BanksApi.users_id_user_accounts_id_account_transactions_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactions".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
      form_params["original_wording"] = original_wording
      form_params["value"] = value
      form_params["date"] = date
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["state"] = opts[:'state'] if !opts[:'state'].nil?
      form_params["rdate"] = opts[:'rdate'] if !opts[:'rdate'].nil?
      form_params["coming"] = opts[:'coming'] if !opts[:'coming'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?
      form_params["date_scraped"] = opts[:'date_scraped'] if !opts[:'date_scraped'].nil?
      form_params["id_account"] = opts[:'id_account2'] if !opts[:'id_account2'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get clustered transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20028]
    def users_id_user_accounts_id_account_transactionsclusters_get(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactionsclusters_get_with_http_info(id_user, id_account, opts)
      return data
    end

    # Get clustered transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20028, Fixnum, Hash)>] InlineResponse20028 data, response status code and response headers
    def users_id_user_accounts_id_account_transactionsclusters_get_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactionsclusters_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactionsclusters_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactionsclusters_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactionsclusters".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        :return_type => 'InlineResponse20028')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactionsclusters_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a clustered transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete(id_user, id_account, id_transactionscluster, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete_with_http_info(id_user, id_account, id_transactionscluster, opts)
      return data
    end

    # Delete a clustered transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete_with_http_info(id_user, id_account, id_transactionscluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete"
      end
      # verify the required parameter 'id_transactionscluster' is set
      if @api_client.config.client_side_validation && id_transactionscluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactionscluster' when calling BanksApi.users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactionscluster}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactionscluster' + '}', id_transactionscluster.to_s)

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
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a clustered transaction
    # Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put(id_user, id_account, id_transactionscluster, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put_with_http_info(id_user, id_account, id_transactionscluster, opts)
      return data
    end

    # Edit a clustered transaction
    # Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put_with_http_info(id_user, id_account, id_transactionscluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put"
      end
      # verify the required parameter 'id_transactionscluster' is set
      if @api_client.config.client_side_validation && id_transactionscluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactionscluster' when calling BanksApi.users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactionsclusters/{id_transactionscluster}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactionscluster' + '}', id_transactionscluster.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactionsclusters_id_transactionscluster_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create clustered transaction
    # Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_accounts_id_account_transactionsclusters_post(id_user, id_account, opts = {})
      data, _status_code, _headers = users_id_user_accounts_id_account_transactionsclusters_post_with_http_info(id_user, id_account, opts)
      return data
    end

    # Create clustered transaction
    # Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_accounts_id_account_transactionsclusters_post_with_http_info(id_user, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_id_account_transactionsclusters_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_id_account_transactionsclusters_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_accounts_id_account_transactionsclusters_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts/{id_account}/transactionsclusters".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_id_account_transactionsclusters_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an account
    # This endpoint creates an account not related to a connection.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param name name of account
    # @param balance balance of account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :number number of account
    # @option opts [String] :iban IBAN of account
    # @option opts [String] :id_currency the currency of the account (default: &#39;EUR&#39;)
    # @option opts [String] :expand 
    # @return [Account]
    def users_id_user_accounts_post(id_user, name, balance, opts = {})
      data, _status_code, _headers = users_id_user_accounts_post_with_http_info(id_user, name, balance, opts)
      return data
    end

    # Create an account
    # This endpoint creates an account not related to a connection.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param name name of account
    # @param balance balance of account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :number number of account
    # @option opts [String] :iban IBAN of account
    # @option opts [String] :id_currency the currency of the account (default: &#39;EUR&#39;)
    # @option opts [String] :expand 
    # @return [Array<(Account, Fixnum, Hash)>] Account data, response status code and response headers
    def users_id_user_accounts_post_with_http_info(id_user, name, balance, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_accounts_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_accounts_post"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BanksApi.users_id_user_accounts_post"
      end
      # verify the required parameter 'balance' is set
      if @api_client.config.client_side_validation && balance.nil?
        fail ArgumentError, "Missing the required parameter 'balance' when calling BanksApi.users_id_user_accounts_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/accounts".sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params["balance"] = balance
      form_params["number"] = opts[:'number'] if !opts[:'number'].nil?
      form_params["iban"] = opts[:'iban'] if !opts[:'iban'].nil?
      form_params["id_currency"] = opts[:'id_currency'] if !opts[:'id_currency'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Account')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_accounts_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get alerts
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20029]
    def users_id_user_alerts_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_alerts_get_with_http_info(id_user, opts)
      return data
    end

    # Get alerts
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20029, Fixnum, Hash)>] InlineResponse20029 data, response status code and response headers
    def users_id_user_alerts_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_alerts_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_alerts_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/alerts".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'InlineResponse20029')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_alerts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the category
    # Ressource to get categories<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20030]
    def users_id_user_categories_full_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_categories_full_get_with_http_info(id_user, opts)
      return data
    end

    # Get the category
    # Ressource to get categories&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20030, Fixnum, Hash)>] InlineResponse20030 data, response status code and response headers
    def users_id_user_categories_full_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_categories_full_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_categories_full_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/categories/full".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'InlineResponse20030')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_categories_full_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the category
    # Ressource to get categories for the user's transactions<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_id_user_categories_get(id_user, opts = {})
      users_id_user_categories_get_with_http_info(id_user, opts)
      return nil
    end

    # Get the category
    # Ressource to get categories for the user&#39;s transactions&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_categories_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_categories_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_categories_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/categories".sub('{' + 'id_user' + '}', id_user.to_s)

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
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_categories_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_delete"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Connection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2008')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all accounts
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Account]
    def users_id_user_connections_id_connection_accounts_delete(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_delete_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Delete all accounts
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Account, Fixnum, Hash)>] Account data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_delete_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
        :return_type => 'Account')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get accounts list.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20018]
    def users_id_user_connections_id_connection_accounts_get(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_get_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Get accounts list.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20018, Fixnum, Hash)>] InlineResponse20018 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_get_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
        :return_type => 'InlineResponse20018')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get the category
    # Ressource to get categories for the user's transactions<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def users_id_user_connections_id_connection_accounts_id_account_categories_get(id_user, id_connection, id_account, opts = {})
      users_id_user_connections_id_connection_accounts_id_account_categories_get_with_http_info(id_user, id_connection, id_account, opts)
      return nil
    end

    # Get the category
    # Ressource to get categories for the user&#39;s transactions&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_categories_get_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_categories_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_categories_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_categories_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_categories_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/categories".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_categories_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete an account.
    # It deletes a specific account. If this is the last synced account of a connection, it will be removed too.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Account]
    def users_id_user_connections_id_connection_accounts_id_account_delete(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_delete_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Delete an account.
    # It deletes a specific account. If this is the last synced account of a connection, it will be removed too.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Account, Fixnum, Hash)>] Account data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_delete_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        :return_type => 'Account')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get deltas of accounts
    # Get account delta between sums of transactions and difference of account balance for the given period.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [String] :period period to group logs
    # @return [nil]
    def users_id_user_connections_id_connection_accounts_id_account_delta_get(id_user, id_connection, id_account, opts = {})
      users_id_user_connections_id_connection_accounts_id_account_delta_get_with_http_info(id_user, id_connection, id_account, opts)
      return nil
    end

    # Get deltas of accounts
    # Get account delta between sums of transactions and difference of account balance for the given period.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :min_date minimal date
    # @option opts [Date] :max_date maximum date
    # @option opts [String] :period period to group logs
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_delta_get_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_delta_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_delta_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_delta_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_delta_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/delta".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_delta_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get accounts logs.
    # Get logs of account.<br><br>By default, it selects logs for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [String] :expand 
    # @return [InlineResponse20021]
    def users_id_user_connections_id_connection_accounts_id_account_logs_get(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_logs_get_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Get accounts logs.
    # Get logs of account.&lt;br&gt;&lt;br&gt;By default, it selects logs for the last month. You can use \&quot;min_date\&quot; and \&quot;max_date\&quot; to change boundary dates.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20021, Fixnum, Hash)>] InlineResponse20021 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_logs_get_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_logs_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_logs_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_logs_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_logs_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/logs".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
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
        :return_type => 'InlineResponse20021')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update an account
    # It updates a specific account<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :display If the account is displayed
    # @option opts [String] :name Label of the account
    # @option opts [Float] :balance Balance of the account
    # @option opts [BOOLEAN] :disabled If the account is disabled (not synchronized)
    # @option opts [String] :iban IBAN of the account
    # @option opts [BOOLEAN] :bookmarked If the account is bookmarked
    # @option opts [String] :expand 
    # @return [Account]
    def users_id_user_connections_id_connection_accounts_id_account_put(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_put_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Update an account
    # It updates a specific account&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :display If the account is displayed
    # @option opts [String] :name Label of the account
    # @option opts [Float] :balance Balance of the account
    # @option opts [BOOLEAN] :disabled If the account is disabled (not synchronized)
    # @option opts [String] :iban IBAN of the account
    # @option opts [BOOLEAN] :bookmarked If the account is bookmarked
    # @option opts [String] :expand 
    # @return [Array<(Account, Fixnum, Hash)>] Account data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_put_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
      form_params["display"] = opts[:'display'] if !opts[:'display'].nil?
      form_params["name"] = opts[:'name'] if !opts[:'name'].nil?
      form_params["balance"] = opts[:'balance'] if !opts[:'balance'].nil?
      form_params["disabled"] = opts[:'disabled'] if !opts[:'disabled'].nil?
      form_params["iban"] = opts[:'iban'] if !opts[:'iban'].nil?
      form_params["bookmarked"] = opts[:'bookmarked'] if !opts[:'bookmarked'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Account')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_delete(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_delete_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Delete transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_delete_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactions_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transactions
    # Get list of transactions.<br><br>By default, it selects transactions for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [BOOLEAN] :income filter on income or expenditures
    # @option opts [BOOLEAN] :deleted display only deleted transactions
    # @option opts [BOOLEAN] :all display all transactions, including deleted ones
    # @option opts [DateTime] :last_update get only transactions updated after the specified datetime
    # @option opts [String] :wording filter transactions containing the given string
    # @option opts [Float] :min_value minimal (inclusive) value
    # @option opts [Float] :max_value maximum (inclusive) value
    # @option opts [String] :search search in labels, dates, values and categories
    # @option opts [String] :value \&quot;XX|-XX\&quot; or \&quot;±XX\&quot;
    # @option opts [String] :expand 
    # @return [InlineResponse20025]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_get(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_get_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Get transactions
    # Get list of transactions.&lt;br&gt;&lt;br&gt;By default, it selects transactions for the last month. You can use \&quot;min_date\&quot; and \&quot;max_date\&quot; to change boundary dates.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [BOOLEAN] :income filter on income or expenditures
    # @option opts [BOOLEAN] :deleted display only deleted transactions
    # @option opts [BOOLEAN] :all display all transactions, including deleted ones
    # @option opts [DateTime] :last_update get only transactions updated after the specified datetime
    # @option opts [String] :wording filter transactions containing the given string
    # @option opts [Float] :min_value minimal (inclusive) value
    # @option opts [Float] :max_value maximum (inclusive) value
    # @option opts [String] :search search in labels, dates, values and categories
    # @option opts [String] :value \&quot;XX|-XX\&quot; or \&quot;±XX\&quot;
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20025, Fixnum, Hash)>] InlineResponse20025 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_get_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'income'] = opts[:'income'] if !opts[:'income'].nil?
      query_params[:'deleted'] = opts[:'deleted'] if !opts[:'deleted'].nil?
      query_params[:'all'] = opts[:'all'] if !opts[:'all'].nil?
      query_params[:'last_update'] = opts[:'last_update'] if !opts[:'last_update'].nil?
      query_params[:'wording'] = opts[:'wording'] if !opts[:'wording'].nil?
      query_params[:'min_value'] = opts[:'min_value'] if !opts[:'min_value'].nil?
      query_params[:'max_value'] = opts[:'max_value'] if !opts[:'max_value'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'value'] = opts[:'value'] if !opts[:'value'].nil?
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
        :return_type => 'InlineResponse20025')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all arbitrary key-value pairs of a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete(id_user, id_connection, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete_with_http_info(id_user, id_connection, id_account, id_transaction, opts)
      return data
    end

    # Delete all arbitrary key-value pairs of a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete_with_http_info(id_user, id_connection, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all arbitrary key-value pairs on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20027]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get(id_user, id_connection, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get_with_http_info(id_user, id_connection, id_account, id_transaction, opts)
      return data
    end

    # List all arbitrary key-value pairs on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get_with_http_info(id_user, id_connection, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a particular key-value pair on a transaction.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete(id_user, id_connection, id_account, id_transaction, id_information, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete_with_http_info(id_user, id_connection, id_account, id_transaction, id_information, opts)
      return data
    end

    # Delete a particular key-value pair on a transaction.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete_with_http_info(id_user, id_connection, id_account, id_transaction, id_information, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_information' is set
      if @api_client.config.client_side_validation && id_information.nil?
        fail ArgumentError, "Missing the required parameter 'id_information' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_information' + '}', id_information.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a particular arbitrary key-value pair on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get(id_user, id_connection, id_account, id_transaction, id_information, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get_with_http_info(id_user, id_connection, id_account, id_transaction, id_information, opts)
      return data
    end

    # Get a particular arbitrary key-value pair on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get_with_http_info(id_user, id_connection, id_account, id_transaction, id_information, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_information' is set
      if @api_client.config.client_side_validation && id_information.nil?
        fail ArgumentError, "Missing the required parameter 'id_information' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations/{id_information}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_information' + '}', id_information.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_id_information_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add or edit transaction arbitrary key-value pairs
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put(id_user, id_connection, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put_with_http_info(id_user, id_connection, id_account, id_transaction, opts)
      return data
    end

    # Add or edit transaction arbitrary key-value pairs
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put_with_http_info(id_user, id_connection, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_informations_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a transaction meta-data
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :wording user rewording of the transaction
    # @option opts [Date] :application_date change application date of the transaction
    # @option opts [Integer] :id_category ID of the associated category
    # @option opts [String] :comment change comment
    # @option opts [BOOLEAN] :active if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances)
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put(id_user, id_connection, id_account, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put_with_http_info(id_user, id_connection, id_account, id_transaction, opts)
      return data
    end

    # Edit a transaction meta-data
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :wording user rewording of the transaction
    # @option opts [Date] :application_date change application date of the transaction
    # @option opts [Integer] :id_category ID of the associated category
    # @option opts [String] :comment change comment
    # @option opts [BOOLEAN] :active if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances)
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put_with_http_info(id_user, id_connection, id_account, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions/{id_transaction}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["wording"] = opts[:'wording'] if !opts[:'wording'].nil?
      form_params["application_date"] = opts[:'application_date'] if !opts[:'application_date'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["comment"] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create transactions
    # Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.<br><br><br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param original_wording label of the transaction
    # @param value vallue of the transaction
    # @param date date of the transaction
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type type of the transaction (default: unknown)
    # @option opts [String] :state nature of the transaction (default: new)
    # @option opts [Date] :rdate realisation date of the transaction (default: value of date)
    # @option opts [BOOLEAN] :coming 1 if the transaction has already been debited (default: 0)
    # @option opts [BOOLEAN] :active 1 if the transaction should be taken into account by pfm services (default: 1)
    # @option opts [DateTime] :date_scraped date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
    # @option opts [Integer] :id_account2 account of the transaction. If not supplied, it has to be given in the route
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_connections_id_connection_accounts_id_account_transactions_post(id_user, id_connection, id_account, original_wording, value, date, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactions_post_with_http_info(id_user, id_connection, id_account, original_wording, value, date, opts)
      return data
    end

    # Create transactions
    # Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param original_wording label of the transaction
    # @param value vallue of the transaction
    # @param date date of the transaction
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type type of the transaction (default: unknown)
    # @option opts [String] :state nature of the transaction (default: new)
    # @option opts [Date] :rdate realisation date of the transaction (default: value of date)
    # @option opts [BOOLEAN] :coming 1 if the transaction has already been debited (default: 0)
    # @option opts [BOOLEAN] :active 1 if the transaction should be taken into account by pfm services (default: 1)
    # @option opts [DateTime] :date_scraped date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
    # @option opts [Integer] :id_account2 account of the transaction. If not supplied, it has to be given in the route
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactions_post_with_http_info(id_user, id_connection, id_account, original_wording, value, date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_post"
      end
      # verify the required parameter 'original_wording' is set
      if @api_client.config.client_side_validation && original_wording.nil?
        fail ArgumentError, "Missing the required parameter 'original_wording' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_post"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactions_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactions".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
      form_params["original_wording"] = original_wording
      form_params["value"] = value
      form_params["date"] = date
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["state"] = opts[:'state'] if !opts[:'state'].nil?
      form_params["rdate"] = opts[:'rdate'] if !opts[:'rdate'].nil?
      form_params["coming"] = opts[:'coming'] if !opts[:'coming'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?
      form_params["date_scraped"] = opts[:'date_scraped'] if !opts[:'date_scraped'].nil?
      form_params["id_account"] = opts[:'id_account2'] if !opts[:'id_account2'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get clustered transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20028]
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Get clustered transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20028, Fixnum, Hash)>] InlineResponse20028 data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        :return_type => 'InlineResponse20028')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a clustered transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete(id_user, id_connection, id_account, id_transactionscluster, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete_with_http_info(id_user, id_connection, id_account, id_transactionscluster, opts)
      return data
    end

    # Delete a clustered transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete_with_http_info(id_user, id_connection, id_account, id_transactionscluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete"
      end
      # verify the required parameter 'id_transactionscluster' is set
      if @api_client.config.client_side_validation && id_transactionscluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactionscluster' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactionscluster}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactionscluster' + '}', id_transactionscluster.to_s)

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
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a clustered transaction
    # Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put(id_user, id_connection, id_account, id_transactionscluster, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put_with_http_info(id_user, id_connection, id_account, id_transactionscluster, opts)
      return data
    end

    # Edit a clustered transaction
    # Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put_with_http_info(id_user, id_connection, id_account, id_transactionscluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put"
      end
      # verify the required parameter 'id_transactionscluster' is set
      if @api_client.config.client_side_validation && id_transactionscluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactionscluster' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters/{id_transactionscluster}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s).sub('{' + 'id_transactionscluster' + '}', id_transactionscluster.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactionscluster_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create clustered transaction
    # Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post(id_user, id_connection, id_account, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post_with_http_info(id_user, id_connection, id_account, opts)
      return data
    end

    # Create clustered transaction
    # Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_account 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post_with_http_info(id_user, id_connection, id_account, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling BanksApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts/{id_account}/transactionsclusters".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_account' + '}', id_account.to_s)

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
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an account
    # This endpoint creates an account not related to a connection.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param name name of account
    # @param balance balance of account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :number number of account
    # @option opts [String] :iban IBAN of account
    # @option opts [String] :id_currency the currency of the account (default: &#39;EUR&#39;)
    # @option opts [String] :expand 
    # @return [Account]
    def users_id_user_connections_id_connection_accounts_post(id_user, id_connection, name, balance, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_accounts_post_with_http_info(id_user, id_connection, name, balance, opts)
      return data
    end

    # Create an account
    # This endpoint creates an account not related to a connection.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param name name of account
    # @param balance balance of account
    # @param [Hash] opts the optional parameters
    # @option opts [String] :number number of account
    # @option opts [String] :iban IBAN of account
    # @option opts [String] :id_currency the currency of the account (default: &#39;EUR&#39;)
    # @option opts [String] :expand 
    # @return [Array<(Account, Fixnum, Hash)>] Account data, response status code and response headers
    def users_id_user_connections_id_connection_accounts_post_with_http_info(id_user, id_connection, name, balance, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_accounts_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_accounts_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_accounts_post"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling BanksApi.users_id_user_connections_id_connection_accounts_post"
      end
      # verify the required parameter 'balance' is set
      if @api_client.config.client_side_validation && balance.nil?
        fail ArgumentError, "Missing the required parameter 'balance' when calling BanksApi.users_id_user_connections_id_connection_accounts_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/accounts".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
      form_params["balance"] = balance
      form_params["number"] = opts[:'number'] if !opts[:'number'].nil?
      form_params["iban"] = opts[:'iban'] if !opts[:'iban'].nil?
      form_params["id_currency"] = opts[:'id_currency'] if !opts[:'id_currency'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Account')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_accounts_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_delete"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Connection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_informations_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_informations_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_informations_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse2008')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_informations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_logs_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_logs_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_logs_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20015')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_post"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Connection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_put"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Connection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_connections_id_connection_transactions_delete(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_delete_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Delete transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_delete_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactions_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactions_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactions_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactions_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transactions
    # Get list of transactions.<br><br>By default, it selects transactions for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [BOOLEAN] :income filter on income or expenditures
    # @option opts [BOOLEAN] :deleted display only deleted transactions
    # @option opts [BOOLEAN] :all display all transactions, including deleted ones
    # @option opts [DateTime] :last_update get only transactions updated after the specified datetime
    # @option opts [String] :wording filter transactions containing the given string
    # @option opts [Float] :min_value minimal (inclusive) value
    # @option opts [Float] :max_value maximum (inclusive) value
    # @option opts [String] :search search in labels, dates, values and categories
    # @option opts [String] :value \&quot;XX|-XX\&quot; or \&quot;±XX\&quot;
    # @option opts [String] :expand 
    # @return [InlineResponse20025]
    def users_id_user_connections_id_connection_transactions_get(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_get_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Get transactions
    # Get list of transactions.&lt;br&gt;&lt;br&gt;By default, it selects transactions for the last month. You can use \&quot;min_date\&quot; and \&quot;max_date\&quot; to change boundary dates.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [BOOLEAN] :income filter on income or expenditures
    # @option opts [BOOLEAN] :deleted display only deleted transactions
    # @option opts [BOOLEAN] :all display all transactions, including deleted ones
    # @option opts [DateTime] :last_update get only transactions updated after the specified datetime
    # @option opts [String] :wording filter transactions containing the given string
    # @option opts [Float] :min_value minimal (inclusive) value
    # @option opts [Float] :max_value maximum (inclusive) value
    # @option opts [String] :search search in labels, dates, values and categories
    # @option opts [String] :value \&quot;XX|-XX\&quot; or \&quot;±XX\&quot;
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20025, Fixnum, Hash)>] InlineResponse20025 data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_get_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactions_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactions_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactions_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'income'] = opts[:'income'] if !opts[:'income'].nil?
      query_params[:'deleted'] = opts[:'deleted'] if !opts[:'deleted'].nil?
      query_params[:'all'] = opts[:'all'] if !opts[:'all'].nil?
      query_params[:'last_update'] = opts[:'last_update'] if !opts[:'last_update'].nil?
      query_params[:'wording'] = opts[:'wording'] if !opts[:'wording'].nil?
      query_params[:'min_value'] = opts[:'min_value'] if !opts[:'min_value'].nil?
      query_params[:'max_value'] = opts[:'max_value'] if !opts[:'max_value'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'value'] = opts[:'value'] if !opts[:'value'].nil?
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
        :return_type => 'InlineResponse20025')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all arbitrary key-value pairs of a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_connections_id_connection_transactions_id_transaction_informations_delete(id_user, id_connection, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_informations_delete_with_http_info(id_user, id_connection, id_transaction, opts)
      return data
    end

    # Delete all arbitrary key-value pairs of a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_informations_delete_with_http_info(id_user, id_connection, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactions_id_transaction_informations_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all arbitrary key-value pairs on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20027]
    def users_id_user_connections_id_connection_transactions_id_transaction_informations_get(id_user, id_connection, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_informations_get_with_http_info(id_user, id_connection, id_transaction, opts)
      return data
    end

    # List all arbitrary key-value pairs on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_informations_get_with_http_info(id_user, id_connection, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactions_id_transaction_informations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a particular key-value pair on a transaction.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete(id_user, id_connection, id_transaction, id_information, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete_with_http_info(id_user, id_connection, id_transaction, id_information, opts)
      return data
    end

    # Delete a particular key-value pair on a transaction.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete_with_http_info(id_user, id_connection, id_transaction, id_information, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_information' is set
      if @api_client.config.client_side_validation && id_information.nil?
        fail ArgumentError, "Missing the required parameter 'id_information' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations/{id_information}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_information' + '}', id_information.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a particular arbitrary key-value pair on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get(id_user, id_connection, id_transaction, id_information, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get_with_http_info(id_user, id_connection, id_transaction, id_information, opts)
      return data
    end

    # Get a particular arbitrary key-value pair on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get_with_http_info(id_user, id_connection, id_transaction, id_information, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_information' is set
      if @api_client.config.client_side_validation && id_information.nil?
        fail ArgumentError, "Missing the required parameter 'id_information' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations/{id_information}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_information' + '}', id_information.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactions_id_transaction_informations_id_information_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add or edit transaction arbitrary key-value pairs
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_connections_id_connection_transactions_id_transaction_informations_put(id_user, id_connection, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_informations_put_with_http_info(id_user, id_connection, id_transaction, opts)
      return data
    end

    # Add or edit transaction arbitrary key-value pairs
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_informations_put_with_http_info(id_user, id_connection, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_informations_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactions_id_transaction_informations_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a transaction meta-data
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :wording user rewording of the transaction
    # @option opts [Date] :application_date change application date of the transaction
    # @option opts [Integer] :id_category ID of the associated category
    # @option opts [String] :comment change comment
    # @option opts [BOOLEAN] :active if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances)
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_connections_id_connection_transactions_id_transaction_put(id_user, id_connection, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_id_transaction_put_with_http_info(id_user, id_connection, id_transaction, opts)
      return data
    end

    # Edit a transaction meta-data
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :wording user rewording of the transaction
    # @option opts [Date] :application_date change application date of the transaction
    # @option opts [Integer] :id_category ID of the associated category
    # @option opts [String] :comment change comment
    # @option opts [BOOLEAN] :active if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances)
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_id_transaction_put_with_http_info(id_user, id_connection, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_connections_id_connection_transactions_id_transaction_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions/{id_transaction}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["wording"] = opts[:'wording'] if !opts[:'wording'].nil?
      form_params["application_date"] = opts[:'application_date'] if !opts[:'application_date'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["comment"] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactions_id_transaction_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create transactions
    # Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.<br><br><br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param original_wording label of the transaction
    # @param value vallue of the transaction
    # @param date date of the transaction
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type type of the transaction (default: unknown)
    # @option opts [String] :state nature of the transaction (default: new)
    # @option opts [Date] :rdate realisation date of the transaction (default: value of date)
    # @option opts [BOOLEAN] :coming 1 if the transaction has already been debited (default: 0)
    # @option opts [BOOLEAN] :active 1 if the transaction should be taken into account by pfm services (default: 1)
    # @option opts [DateTime] :date_scraped date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
    # @option opts [Integer] :id_account account of the transaction. If not supplied, it has to be given in the route
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_connections_id_connection_transactions_post(id_user, id_connection, original_wording, value, date, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactions_post_with_http_info(id_user, id_connection, original_wording, value, date, opts)
      return data
    end

    # Create transactions
    # Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param original_wording label of the transaction
    # @param value vallue of the transaction
    # @param date date of the transaction
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type type of the transaction (default: unknown)
    # @option opts [String] :state nature of the transaction (default: new)
    # @option opts [Date] :rdate realisation date of the transaction (default: value of date)
    # @option opts [BOOLEAN] :coming 1 if the transaction has already been debited (default: 0)
    # @option opts [BOOLEAN] :active 1 if the transaction should be taken into account by pfm services (default: 1)
    # @option opts [DateTime] :date_scraped date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
    # @option opts [Integer] :id_account account of the transaction. If not supplied, it has to be given in the route
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_connections_id_connection_transactions_post_with_http_info(id_user, id_connection, original_wording, value, date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactions_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactions_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactions_post"
      end
      # verify the required parameter 'original_wording' is set
      if @api_client.config.client_side_validation && original_wording.nil?
        fail ArgumentError, "Missing the required parameter 'original_wording' when calling BanksApi.users_id_user_connections_id_connection_transactions_post"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling BanksApi.users_id_user_connections_id_connection_transactions_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling BanksApi.users_id_user_connections_id_connection_transactions_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactions".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
      form_params["original_wording"] = original_wording
      form_params["value"] = value
      form_params["date"] = date
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["state"] = opts[:'state'] if !opts[:'state'].nil?
      form_params["rdate"] = opts[:'rdate'] if !opts[:'rdate'].nil?
      form_params["coming"] = opts[:'coming'] if !opts[:'coming'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?
      form_params["date_scraped"] = opts[:'date_scraped'] if !opts[:'date_scraped'].nil?
      form_params["id_account"] = opts[:'id_account'] if !opts[:'id_account'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get clustered transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20028]
    def users_id_user_connections_id_connection_transactionsclusters_get(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactionsclusters_get_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Get clustered transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20028, Fixnum, Hash)>] InlineResponse20028 data, response status code and response headers
    def users_id_user_connections_id_connection_transactionsclusters_get_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactionsclusters_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactionsclusters_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactionsclusters_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactionsclusters".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
        :return_type => 'InlineResponse20028')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactionsclusters_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a clustered transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete(id_user, id_connection, id_transactionscluster, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete_with_http_info(id_user, id_connection, id_transactionscluster, opts)
      return data
    end

    # Delete a clustered transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete_with_http_info(id_user, id_connection, id_transactionscluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete"
      end
      # verify the required parameter 'id_transactionscluster' is set
      if @api_client.config.client_side_validation && id_transactionscluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactionscluster' when calling BanksApi.users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactionscluster}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transactionscluster' + '}', id_transactionscluster.to_s)

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
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a clustered transaction
    # Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put(id_user, id_connection, id_transactionscluster, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put_with_http_info(id_user, id_connection, id_transactionscluster, opts)
      return data
    end

    # Edit a clustered transaction
    # Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put_with_http_info(id_user, id_connection, id_transactionscluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put"
      end
      # verify the required parameter 'id_transactionscluster' is set
      if @api_client.config.client_side_validation && id_transactionscluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactionscluster' when calling BanksApi.users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactionsclusters/{id_transactionscluster}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s).sub('{' + 'id_transactionscluster' + '}', id_transactionscluster.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactionsclusters_id_transactionscluster_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create clustered transaction
    # Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_connections_id_connection_transactionsclusters_post(id_user, id_connection, opts = {})
      data, _status_code, _headers = users_id_user_connections_id_connection_transactionsclusters_post_with_http_info(id_user, id_connection, opts)
      return data
    end

    # Create clustered transaction
    # Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_connection 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_connections_id_connection_transactionsclusters_post_with_http_info(id_user, id_connection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_id_connection_transactionsclusters_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_id_connection_transactionsclusters_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling BanksApi.users_id_user_connections_id_connection_transactionsclusters_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/connections/{id_connection}/transactionsclusters".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_connection' + '}', id_connection.to_s)

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
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_id_connection_transactionsclusters_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_connections_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_connections_post"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Connection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_connections_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_forecast_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_forecast_get"
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
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_forecast_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_logs_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_logs_get"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'InlineResponse20015')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_logs_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_transactions_delete(id_user, opts = {})
      data, _status_code, _headers = users_id_user_transactions_delete_with_http_info(id_user, opts)
      return data
    end

    # Delete transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_transactions_delete_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactions_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactions_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactions_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get transactions
    # Get list of transactions.<br><br>By default, it selects transactions for the last month. You can use \"min_date\" and \"max_date\" to change boundary dates.<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [BOOLEAN] :income filter on income or expenditures
    # @option opts [BOOLEAN] :deleted display only deleted transactions
    # @option opts [BOOLEAN] :all display all transactions, including deleted ones
    # @option opts [DateTime] :last_update get only transactions updated after the specified datetime
    # @option opts [String] :wording filter transactions containing the given string
    # @option opts [Float] :min_value minimal (inclusive) value
    # @option opts [Float] :max_value maximum (inclusive) value
    # @option opts [String] :search search in labels, dates, values and categories
    # @option opts [String] :value \&quot;XX|-XX\&quot; or \&quot;±XX\&quot;
    # @option opts [String] :expand 
    # @return [InlineResponse20025]
    def users_id_user_transactions_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_transactions_get_with_http_info(id_user, opts)
      return data
    end

    # Get transactions
    # Get list of transactions.&lt;br&gt;&lt;br&gt;By default, it selects transactions for the last month. You can use \&quot;min_date\&quot; and \&quot;max_date\&quot; to change boundary dates.&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :limit limit number of results
    # @option opts [Integer] :offset offset of first result
    # @option opts [Date] :min_date minimal (inclusive) date
    # @option opts [Date] :max_date maximum (inclusive) date
    # @option opts [BOOLEAN] :income filter on income or expenditures
    # @option opts [BOOLEAN] :deleted display only deleted transactions
    # @option opts [BOOLEAN] :all display all transactions, including deleted ones
    # @option opts [DateTime] :last_update get only transactions updated after the specified datetime
    # @option opts [String] :wording filter transactions containing the given string
    # @option opts [Float] :min_value minimal (inclusive) value
    # @option opts [Float] :max_value maximum (inclusive) value
    # @option opts [String] :search search in labels, dates, values and categories
    # @option opts [String] :value \&quot;XX|-XX\&quot; or \&quot;±XX\&quot;
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20025, Fixnum, Hash)>] InlineResponse20025 data, response status code and response headers
    def users_id_user_transactions_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactions_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactions_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions".sub('{' + 'id_user' + '}', id_user.to_s)

      # query parameters
      query_params = {}
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'min_date'] = opts[:'min_date'] if !opts[:'min_date'].nil?
      query_params[:'max_date'] = opts[:'max_date'] if !opts[:'max_date'].nil?
      query_params[:'income'] = opts[:'income'] if !opts[:'income'].nil?
      query_params[:'deleted'] = opts[:'deleted'] if !opts[:'deleted'].nil?
      query_params[:'all'] = opts[:'all'] if !opts[:'all'].nil?
      query_params[:'last_update'] = opts[:'last_update'] if !opts[:'last_update'].nil?
      query_params[:'wording'] = opts[:'wording'] if !opts[:'wording'].nil?
      query_params[:'min_value'] = opts[:'min_value'] if !opts[:'min_value'].nil?
      query_params[:'max_value'] = opts[:'max_value'] if !opts[:'max_value'].nil?
      query_params[:'search'] = opts[:'search'] if !opts[:'search'].nil?
      query_params[:'value'] = opts[:'value'] if !opts[:'value'].nil?
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
        :return_type => 'InlineResponse20025')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete all arbitrary key-value pairs of a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_transactions_id_transaction_informations_delete(id_user, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_informations_delete_with_http_info(id_user, id_transaction, opts)
      return data
    end

    # Delete all arbitrary key-value pairs of a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_transactions_id_transaction_informations_delete_with_http_info(id_user, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactions_id_transaction_informations_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactions_id_transaction_informations_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_transactions_id_transaction_informations_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactions_id_transaction_informations_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List all arbitrary key-value pairs on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20027]
    def users_id_user_transactions_id_transaction_informations_get(id_user, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_informations_get_with_http_info(id_user, id_transaction, opts)
      return data
    end

    # List all arbitrary key-value pairs on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20027, Fixnum, Hash)>] InlineResponse20027 data, response status code and response headers
    def users_id_user_transactions_id_transaction_informations_get_with_http_info(id_user, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactions_id_transaction_informations_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactions_id_transaction_informations_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_transactions_id_transaction_informations_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
        :return_type => 'InlineResponse20027')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactions_id_transaction_informations_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a particular key-value pair on a transaction.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_transactions_id_transaction_informations_id_information_delete(id_user, id_transaction, id_information, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_informations_id_information_delete_with_http_info(id_user, id_transaction, id_information, opts)
      return data
    end

    # Delete a particular key-value pair on a transaction.
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_transactions_id_transaction_informations_id_information_delete_with_http_info(id_user, id_transaction, id_information, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactions_id_transaction_informations_id_information_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_transactions_id_transaction_informations_id_information_delete"
      end
      # verify the required parameter 'id_information' is set
      if @api_client.config.client_side_validation && id_information.nil?
        fail ArgumentError, "Missing the required parameter 'id_information' when calling BanksApi.users_id_user_transactions_id_transaction_informations_id_information_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}/informations/{id_information}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_information' + '}', id_information.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactions_id_transaction_informations_id_information_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a particular arbitrary key-value pair on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_transactions_id_transaction_informations_id_information_get(id_user, id_transaction, id_information, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_informations_id_information_get_with_http_info(id_user, id_transaction, id_information, opts)
      return data
    end

    # Get a particular arbitrary key-value pair on a transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param id_information 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_transactions_id_transaction_informations_id_information_get_with_http_info(id_user, id_transaction, id_information, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactions_id_transaction_informations_id_information_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_transactions_id_transaction_informations_id_information_get"
      end
      # verify the required parameter 'id_information' is set
      if @api_client.config.client_side_validation && id_information.nil?
        fail ArgumentError, "Missing the required parameter 'id_information' when calling BanksApi.users_id_user_transactions_id_transaction_informations_id_information_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}/informations/{id_information}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s).sub('{' + 'id_information' + '}', id_information.to_s)

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
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactions_id_transaction_informations_id_information_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Add or edit transaction arbitrary key-value pairs
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionInformation]
    def users_id_user_transactions_id_transaction_informations_put(id_user, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_informations_put_with_http_info(id_user, id_transaction, opts)
      return data
    end

    # Add or edit transaction arbitrary key-value pairs
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionInformation, Fixnum, Hash)>] TransactionInformation data, response status code and response headers
    def users_id_user_transactions_id_transaction_informations_put_with_http_info(id_user, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactions_id_transaction_informations_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactions_id_transaction_informations_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_transactions_id_transaction_informations_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}/informations".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionInformation')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactions_id_transaction_informations_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a transaction meta-data
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :wording user rewording of the transaction
    # @option opts [Date] :application_date change application date of the transaction
    # @option opts [Integer] :id_category ID of the associated category
    # @option opts [String] :comment change comment
    # @option opts [BOOLEAN] :active if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances)
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_transactions_id_transaction_put(id_user, id_transaction, opts = {})
      data, _status_code, _headers = users_id_user_transactions_id_transaction_put_with_http_info(id_user, id_transaction, opts)
      return data
    end

    # Edit a transaction meta-data
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transaction 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :wording user rewording of the transaction
    # @option opts [Date] :application_date change application date of the transaction
    # @option opts [Integer] :id_category ID of the associated category
    # @option opts [String] :comment change comment
    # @option opts [BOOLEAN] :active if false, transaction isn&#39;t considered in analyzisis endpoints (like /balances)
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_transactions_id_transaction_put_with_http_info(id_user, id_transaction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactions_id_transaction_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactions_id_transaction_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling BanksApi.users_id_user_transactions_id_transaction_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions/{id_transaction}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transaction' + '}', id_transaction.to_s)

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
      form_params["wording"] = opts[:'wording'] if !opts[:'wording'].nil?
      form_params["application_date"] = opts[:'application_date'] if !opts[:'application_date'].nil?
      form_params["id_category"] = opts[:'id_category'] if !opts[:'id_category'].nil?
      form_params["comment"] = opts[:'comment'] if !opts[:'comment'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactions_id_transaction_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create transactions
    # Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.<br><br><br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param original_wording label of the transaction
    # @param value vallue of the transaction
    # @param date date of the transaction
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type type of the transaction (default: unknown)
    # @option opts [String] :state nature of the transaction (default: new)
    # @option opts [Date] :rdate realisation date of the transaction (default: value of date)
    # @option opts [BOOLEAN] :coming 1 if the transaction has already been debited (default: 0)
    # @option opts [BOOLEAN] :active 1 if the transaction should be taken into account by pfm services (default: 1)
    # @option opts [DateTime] :date_scraped date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
    # @option opts [Integer] :id_account account of the transaction. If not supplied, it has to be given in the route
    # @option opts [String] :expand 
    # @return [Transaction]
    def users_id_user_transactions_post(id_user, original_wording, value, date, opts = {})
      data, _status_code, _headers = users_id_user_transactions_post_with_http_info(id_user, original_wording, value, date, opts)
      return data
    end

    # Create transactions
    # Create transactions for the supplied account or the account whose id is given with form parameters. It requires an array of transaction dictionaries.&lt;br&gt;&lt;br&gt;&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param original_wording label of the transaction
    # @param value vallue of the transaction
    # @param date date of the transaction
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type type of the transaction (default: unknown)
    # @option opts [String] :state nature of the transaction (default: new)
    # @option opts [Date] :rdate realisation date of the transaction (default: value of date)
    # @option opts [BOOLEAN] :coming 1 if the transaction has already been debited (default: 0)
    # @option opts [BOOLEAN] :active 1 if the transaction should be taken into account by pfm services (default: 1)
    # @option opts [DateTime] :date_scraped date on which the transaction has been found for the first time. YYYY-MM-DD HH:MM:SS(default: now)
    # @option opts [Integer] :id_account account of the transaction. If not supplied, it has to be given in the route
    # @option opts [String] :expand 
    # @return [Array<(Transaction, Fixnum, Hash)>] Transaction data, response status code and response headers
    def users_id_user_transactions_post_with_http_info(id_user, original_wording, value, date, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactions_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactions_post"
      end
      # verify the required parameter 'original_wording' is set
      if @api_client.config.client_side_validation && original_wording.nil?
        fail ArgumentError, "Missing the required parameter 'original_wording' when calling BanksApi.users_id_user_transactions_post"
      end
      # verify the required parameter 'value' is set
      if @api_client.config.client_side_validation && value.nil?
        fail ArgumentError, "Missing the required parameter 'value' when calling BanksApi.users_id_user_transactions_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling BanksApi.users_id_user_transactions_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactions".sub('{' + 'id_user' + '}', id_user.to_s)

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
      form_params["original_wording"] = original_wording
      form_params["value"] = value
      form_params["date"] = date
      form_params["type"] = opts[:'type'] if !opts[:'type'].nil?
      form_params["state"] = opts[:'state'] if !opts[:'state'].nil?
      form_params["rdate"] = opts[:'rdate'] if !opts[:'rdate'].nil?
      form_params["coming"] = opts[:'coming'] if !opts[:'coming'].nil?
      form_params["active"] = opts[:'active'] if !opts[:'active'].nil?
      form_params["date_scraped"] = opts[:'date_scraped'] if !opts[:'date_scraped'].nil?
      form_params["id_account"] = opts[:'id_account'] if !opts[:'id_account'].nil?

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Transaction')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactions_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get clustered transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [InlineResponse20028]
    def users_id_user_transactionsclusters_get(id_user, opts = {})
      data, _status_code, _headers = users_id_user_transactionsclusters_get_with_http_info(id_user, opts)
      return data
    end

    # Get clustered transactions
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(InlineResponse20028, Fixnum, Hash)>] InlineResponse20028 data, response status code and response headers
    def users_id_user_transactionsclusters_get_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactionsclusters_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactionsclusters_get"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactionsclusters".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'InlineResponse20028')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactionsclusters_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a clustered transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_transactionsclusters_id_transactionscluster_delete(id_user, id_transactionscluster, opts = {})
      data, _status_code, _headers = users_id_user_transactionsclusters_id_transactionscluster_delete_with_http_info(id_user, id_transactionscluster, opts)
      return data
    end

    # Delete a clustered transaction
    # 
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_transactionsclusters_id_transactionscluster_delete_with_http_info(id_user, id_transactionscluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactionsclusters_id_transactionscluster_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactionsclusters_id_transactionscluster_delete"
      end
      # verify the required parameter 'id_transactionscluster' is set
      if @api_client.config.client_side_validation && id_transactionscluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactionscluster' when calling BanksApi.users_id_user_transactionsclusters_id_transactionscluster_delete"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactionsclusters/{id_transactionscluster}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transactionscluster' + '}', id_transactionscluster.to_s)

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
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactionsclusters_id_transactionscluster_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Edit a clustered transaction
    # Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_transactionsclusters_id_transactionscluster_put(id_user, id_transactionscluster, opts = {})
      data, _status_code, _headers = users_id_user_transactionsclusters_id_transactionscluster_put_with_http_info(id_user, id_transactionscluster, opts)
      return data
    end

    # Edit a clustered transaction
    # Form params : - next_date (date): Date of transaction - mean_amount (decimal): Mean Amount - wording (string): name of transaction - id_account (id): related account - id_category (id): related category - enabled (bool): is enabled&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param id_transactionscluster 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_transactionsclusters_id_transactionscluster_put_with_http_info(id_user, id_transactionscluster, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactionsclusters_id_transactionscluster_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactionsclusters_id_transactionscluster_put"
      end
      # verify the required parameter 'id_transactionscluster' is set
      if @api_client.config.client_side_validation && id_transactionscluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactionscluster' when calling BanksApi.users_id_user_transactionsclusters_id_transactionscluster_put"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactionsclusters/{id_transactionscluster}".sub('{' + 'id_user' + '}', id_user.to_s).sub('{' + 'id_transactionscluster' + '}', id_transactionscluster.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactionsclusters_id_transactionscluster_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create clustered transaction
    # Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account<br><br>
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [TransactionsCluster]
    def users_id_user_transactionsclusters_post(id_user, opts = {})
      data, _status_code, _headers = users_id_user_transactionsclusters_post_with_http_info(id_user, opts)
      return data
    end

    # Create clustered transaction
    # Form params : - next_date (date) required: Date of transaction - mean_amount (decimal) required: Mean Amount - wording (string) required: name of transaction - id_account (id) required: related account&lt;br&gt;&lt;br&gt;
    # @param id_user Hint: you can use &#39;me&#39; or &#39;all&#39;
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expand 
    # @return [Array<(TransactionsCluster, Fixnum, Hash)>] TransactionsCluster data, response status code and response headers
    def users_id_user_transactionsclusters_post_with_http_info(id_user, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: BanksApi.users_id_user_transactionsclusters_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling BanksApi.users_id_user_transactionsclusters_post"
      end
      # resource path
      local_var_path = "/users/{id_user}/transactionsclusters".sub('{' + 'id_user' + '}', id_user.to_s)

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
        :return_type => 'TransactionsCluster')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: BanksApi#users_id_user_transactionsclusters_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
