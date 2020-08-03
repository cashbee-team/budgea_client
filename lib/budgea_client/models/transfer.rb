=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'date'

module BudgeaClient
  # This is a representation of a transfer.
  class Transfer
    # ID of transfer
    attr_accessor :id

    # ID of the debited account
    attr_accessor :id_account

    # ID of the related user
    attr_accessor :id_user

    # ID of the recipient
    attr_accessor :id_recipient

    # IBAN of the debited account
    attr_accessor :account_iban

    # IBAN of the recipient in bank recipient list
    attr_accessor :recipient_iban

    # Date when the transfer will be operated by the bank
    attr_accessor :exec_date

    # Date when the transfer has been registered
    attr_accessor :register_date

    # Amount of the transfer
    attr_accessor :amount

    # Fees taken by the bank
    attr_accessor :fees

    # WebID of the transfer
    attr_accessor :webid

    # State of the transfer (created, scheduled, validating, pending, coming, done, canceled, transactionNotFound, deleted, error, bug)
    attr_accessor :state

    # Error message during transfer, if any
    attr_accessor :error

    # Label of the transfer
    attr_accessor :label

    # Balance of the account just before the transfer
    attr_accessor :account_balance

    # If found, ID of the related transaction
    attr_accessor :id_transaction

    # Type of beneficiary number, for example: 'recipient' (in bank recipient list), 'iban' or 'phone_number'
    attr_accessor :beneficiary_type

    # Beneficiary bank identifier value like recipient webid, iban: EX6713281847025300290000062 or phone_number: 06XXXXXX
    attr_accessor :beneficiary_number

    # Label of the beneficiary (needed for transfer to other beneficiary type than 'recipient')
    attr_accessor :beneficiary_label

    # Authentication method used to validate transfer (credentials or webauth)
    attr_accessor :validate_mechanism

    # Currency of the object
    attr_accessor :currency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'id_account' => :'id_account',
        :'id_user' => :'id_user',
        :'id_recipient' => :'id_recipient',
        :'account_iban' => :'account_iban',
        :'recipient_iban' => :'recipient_iban',
        :'exec_date' => :'exec_date',
        :'register_date' => :'register_date',
        :'amount' => :'amount',
        :'fees' => :'fees',
        :'webid' => :'webid',
        :'state' => :'state',
        :'error' => :'error',
        :'label' => :'label',
        :'account_balance' => :'account_balance',
        :'id_transaction' => :'id_transaction',
        :'beneficiary_type' => :'beneficiary_type',
        :'beneficiary_number' => :'beneficiary_number',
        :'beneficiary_label' => :'beneficiary_label',
        :'validate_mechanism' => :'validate_mechanism',
        :'currency' => :'currency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'id_account' => :'Integer',
        :'id_user' => :'Integer',
        :'id_recipient' => :'Integer',
        :'account_iban' => :'String',
        :'recipient_iban' => :'String',
        :'exec_date' => :'Date',
        :'register_date' => :'DateTime',
        :'amount' => :'Float',
        :'fees' => :'Float',
        :'webid' => :'String',
        :'state' => :'String',
        :'error' => :'String',
        :'label' => :'String',
        :'account_balance' => :'Float',
        :'id_transaction' => :'Integer',
        :'beneficiary_type' => :'String',
        :'beneficiary_number' => :'String',
        :'beneficiary_label' => :'String',
        :'validate_mechanism' => :'String',
        :'currency' => :'Object'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'id_account')
        self.id_account = attributes[:'id_account']
      end

      if attributes.has_key?(:'id_user')
        self.id_user = attributes[:'id_user']
      end

      if attributes.has_key?(:'id_recipient')
        self.id_recipient = attributes[:'id_recipient']
      end

      if attributes.has_key?(:'account_iban')
        self.account_iban = attributes[:'account_iban']
      end

      if attributes.has_key?(:'recipient_iban')
        self.recipient_iban = attributes[:'recipient_iban']
      end

      if attributes.has_key?(:'exec_date')
        self.exec_date = attributes[:'exec_date']
      end

      if attributes.has_key?(:'register_date')
        self.register_date = attributes[:'register_date']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'fees')
        self.fees = attributes[:'fees']
      end

      if attributes.has_key?(:'webid')
        self.webid = attributes[:'webid']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.has_key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.has_key?(:'account_balance')
        self.account_balance = attributes[:'account_balance']
      end

      if attributes.has_key?(:'id_transaction')
        self.id_transaction = attributes[:'id_transaction']
      end

      if attributes.has_key?(:'beneficiary_type')
        self.beneficiary_type = attributes[:'beneficiary_type']
      else
        self.beneficiary_type = 'recipient'
      end

      if attributes.has_key?(:'beneficiary_number')
        self.beneficiary_number = attributes[:'beneficiary_number']
      end

      if attributes.has_key?(:'beneficiary_label')
        self.beneficiary_label = attributes[:'beneficiary_label']
      end

      if attributes.has_key?(:'validate_mechanism')
        self.validate_mechanism = attributes[:'validate_mechanism']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @exec_date.nil?
        invalid_properties.push('invalid value for "exec_date", exec_date cannot be nil.')
      end

      if @register_date.nil?
        invalid_properties.push('invalid value for "register_date", register_date cannot be nil.')
      end

      if @amount.nil?
        invalid_properties.push('invalid value for "amount", amount cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @beneficiary_type.nil?
        invalid_properties.push('invalid value for "beneficiary_type", beneficiary_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @exec_date.nil?
      return false if @register_date.nil?
      return false if @amount.nil?
      return false if @state.nil?
      return false if @beneficiary_type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          id_account == o.id_account &&
          id_user == o.id_user &&
          id_recipient == o.id_recipient &&
          account_iban == o.account_iban &&
          recipient_iban == o.recipient_iban &&
          exec_date == o.exec_date &&
          register_date == o.register_date &&
          amount == o.amount &&
          fees == o.fees &&
          webid == o.webid &&
          state == o.state &&
          error == o.error &&
          label == o.label &&
          account_balance == o.account_balance &&
          id_transaction == o.id_transaction &&
          beneficiary_type == o.beneficiary_type &&
          beneficiary_number == o.beneficiary_number &&
          beneficiary_label == o.beneficiary_label &&
          validate_mechanism == o.validate_mechanism &&
          currency == o.currency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, id_account, id_user, id_recipient, account_iban, recipient_iban, exec_date, register_date, amount, fees, webid, state, error, label, account_balance, id_transaction, beneficiary_type, beneficiary_number, beneficiary_label, validate_mechanism, currency].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = BudgeaClient.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
