# frozen_string_literal: true

require "uri"

module BudgeaClient
  class OCRApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
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
        @api_client.config.logger.debug "Calling API: OCRApi.ocr_post ..."
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling OCRApi.ocr_post"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OCRApi#ocr_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: OCRApi.users_id_user_ocr_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling OCRApi.users_id_user_ocr_post"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling OCRApi.users_id_user_ocr_post"
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
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OCRApi#users_id_user_ocr_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
