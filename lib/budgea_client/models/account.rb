# frozen_string_literal: true

require 'date'

module BudgeaClient

  class Account
    # ID of the account
    attr_accessor :id

    # ID of the related connection
    attr_accessor :id_connection

    # ID of the related user
    attr_accessor :id_user

    # Id of the parent account
    attr_accessor :id_parent

    # Account number
    attr_accessor :number

    # Original name of the account on the bank
    attr_accessor :original_name

    # Balance of the account
    attr_accessor :balance

    # Amount of coming operations not yet debited
    attr_accessor :coming

    # Display this account in accounts list
    attr_accessor :display

    # Last successful update of the account
    attr_accessor :last_update

    # This account is not found on the website anymore
    attr_accessor :deleted

    # This account has been deleted by user and will not be synchronized anymore
    attr_accessor :disabled

    # Account IBAN
    attr_accessor :iban

    # Account currency
    attr_accessor :currency

    # ID of the account type
    attr_accessor :id_type

    # This account has been bookmarked by user
    attr_accessor :bookmarked

    # Name of the account
    attr_accessor :name

    # If the last update has failed, the error code
    attr_accessor :error


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'id_connection' => :'id_connection',
        :'id_user' => :'id_user',
        :'id_parent' => :'id_parent',
        :'number' => :'number',
        :'original_name' => :'original_name',
        :'balance' => :'balance',
        :'coming' => :'coming',
        :'display' => :'display',
        :'last_update' => :'last_update',
        :'deleted' => :'deleted',
        :'disabled' => :'disabled',
        :'iban' => :'iban',
        :'currency' => :'currency',
        :'id_type' => :'id_type',
        :'bookmarked' => :'bookmarked',
        :'name' => :'name',
        :'error' => :'error'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'id_connection' => :'Integer',
        :'id_user' => :'Integer',
        :'id_parent' => :'Integer',
        :'number' => :'String',
        :'original_name' => :'String',
        :'balance' => :'Float',
        :'coming' => :'Float',
        :'display' => :'BOOLEAN',
        :'last_update' => :'DateTime',
        :'deleted' => :'DateTime',
        :'disabled' => :'DateTime',
        :'iban' => :'String',
        :'currency' => :'Object',
        :'id_type' => :'Integer',
        :'bookmarked' => :'Integer',
        :'name' => :'String',
        :'error' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'id_connection')
        self.id_connection = attributes[:'id_connection']
      end

      if attributes.has_key?(:'id_user')
        self.id_user = attributes[:'id_user']
      end

      if attributes.has_key?(:'id_parent')
        self.id_parent = attributes[:'id_parent']
      end

      if attributes.has_key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.has_key?(:'original_name')
        self.original_name = attributes[:'original_name']
      end

      if attributes.has_key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.has_key?(:'coming')
        self.coming = attributes[:'coming']
      else
        self.coming = 0.0
      end

      if attributes.has_key?(:'display')
        self.display = attributes[:'display']
      else
        self.display = true
      end

      if attributes.has_key?(:'last_update')
        self.last_update = attributes[:'last_update']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.has_key?(:'disabled')
        self.disabled = attributes[:'disabled']
      end

      if attributes.has_key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'id_type')
        self.id_type = attributes[:'id_type']
      end

      if attributes.has_key?(:'bookmarked')
        self.bookmarked = attributes[:'bookmarked']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'error')
        self.error = attributes[:'error']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @id_user.nil?
        invalid_properties.push("invalid value for 'id_user', id_user cannot be nil.")
      end

      if @original_name.nil?
        invalid_properties.push("invalid value for 'original_name', original_name cannot be nil.")
      end

      if @balance.nil?
        invalid_properties.push("invalid value for 'balance', balance cannot be nil.")
      end

      if @display.nil?
        invalid_properties.push("invalid value for 'display', display cannot be nil.")
      end

      if @bookmarked.nil?
        invalid_properties.push("invalid value for 'bookmarked', bookmarked cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id_user.nil?
      return false if @original_name.nil?
      return false if @balance.nil?
      return false if @display.nil?
      return false if @bookmarked.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          id_connection == o.id_connection &&
          id_user == o.id_user &&
          id_parent == o.id_parent &&
          number == o.number &&
          original_name == o.original_name &&
          balance == o.balance &&
          coming == o.coming &&
          display == o.display &&
          last_update == o.last_update &&
          deleted == o.deleted &&
          disabled == o.disabled &&
          iban == o.iban &&
          currency == o.currency &&
          id_type == o.id_type &&
          bookmarked == o.bookmarked &&
          name == o.name &&
          error == o.error
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, id_connection, id_user, id_parent, number, original_name, balance, coming, display, last_update, deleted, disabled, iban, currency, id_type, bookmarked, name, error].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        value.compact.map{ |v| _to_hash(v) }
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
