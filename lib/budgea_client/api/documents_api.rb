# frozen_string_literal: true

require "uri"

module BudgeaClient
  class DocumentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.documenttypes_get ..."
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
        @api_client.config.logger.debug "API called: DocumentsApi#documenttypes_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.documenttypes_id_documenttype_put ..."
      end
      # verify the required parameter 'id_documenttype' is set
      if @api_client.config.client_side_validation && id_documenttype.nil?
        fail ArgumentError, "Missing the required parameter 'id_documenttype' when calling DocumentsApi.documenttypes_id_documenttype_put"
      end
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        fail ArgumentError, "Missing the required parameter 'name' when calling DocumentsApi.documenttypes_id_documenttype_put"
      end
      # verify the required parameter 'attacheable' is set
      if @api_client.config.client_side_validation && attacheable.nil?
        fail ArgumentError, "Missing the required parameter 'attacheable' when calling DocumentsApi.documenttypes_id_documenttype_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#documenttypes_id_documenttype_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.ocr_post ..."
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling DocumentsApi.ocr_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#ocr_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_accounts_id_account_transactions_id_transaction_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactions_id_transaction_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactions_id_transaction_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_account' is set
      if @api_client.config.client_side_validation && id_account.nil?
        fail ArgumentError, "Missing the required parameter 'id_account' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_accounts_id_account_transactionsclusters_id_transactions_cluster_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_connections_id_connection_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_connections_id_connection_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_subscriptions_id_subscription_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_transactions_id_transaction_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactions_id_transaction_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_connection' is set
      if @api_client.config.client_side_validation && id_connection.nil?
        fail ArgumentError, "Missing the required parameter 'id_connection' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_connections_id_connection_transactionsclusters_id_transactions_cluster_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_ocr_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_ocr_post"
      end
      # verify the required parameter 'file' is set
      if @api_client.config.client_side_validation && file.nil?
        fail ArgumentError, "Missing the required parameter 'file' when calling DocumentsApi.users_id_user_ocr_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_ocr_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_subscriptions_id_subscription_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_delete"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_subscriptions_id_subscription_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_subscriptions_id_subscription_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_get"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_subscriptions_id_subscription_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_subscriptions_id_subscription_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_id_document_delete"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_subscriptions_id_subscription_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_subscriptions_id_subscription_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_id_document_put"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_subscriptions_id_subscription_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_subscriptions_id_subscription_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_subscriptions_id_subscription_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_subscriptions_id_subscription_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_put"
      end
      # verify the required parameter 'id_subscription' is set
      if @api_client.config.client_side_validation && id_subscription.nil?
        fail ArgumentError, "Missing the required parameter 'id_subscription' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_subscriptions_id_subscription_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_subscriptions_id_subscription_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactions_id_transaction_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactions_id_transaction_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactions_id_transaction_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_get"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactions_id_transaction_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactions_id_transaction_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactions_id_transaction_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactions_id_transaction_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactions_id_transaction_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactions_id_transaction_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactions_id_transaction_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactions_id_transaction_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_transaction' is set
      if @api_client.config.client_side_validation && id_transaction.nil?
        fail ArgumentError, "Missing the required parameter 'id_transaction' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_transactions_id_transaction_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactions_id_transaction_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_get ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_get"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_get"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_delete\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_id_document_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_post ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'date' is set
      if @api_client.config.client_side_validation && date.nil?
        fail ArgumentError, "Missing the required parameter 'date' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_post"
      end
      # verify the required parameter 'duedate' is set
      if @api_client.config.client_side_validation && duedate.nil?
        fail ArgumentError, "Missing the required parameter 'duedate' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_post"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_post\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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
        @api_client.config.logger.debug "Calling API: DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_put ..."
      end
      # verify the required parameter 'id_user' is set
      if @api_client.config.client_side_validation && id_user.nil?
        fail ArgumentError, "Missing the required parameter 'id_user' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_transactions_cluster' is set
      if @api_client.config.client_side_validation && id_transactions_cluster.nil?
        fail ArgumentError, "Missing the required parameter 'id_transactions_cluster' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_put"
      end
      # verify the required parameter 'id_document' is set
      if @api_client.config.client_side_validation && id_document.nil?
        fail ArgumentError, "Missing the required parameter 'id_document' when calling DocumentsApi.users_id_user_transactionsclusters_id_transactions_cluster_documents_put"
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
        @api_client.config.logger.debug "API called: DocumentsApi#users_id_user_transactionsclusters_id_transactions_cluster_documents_put\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
