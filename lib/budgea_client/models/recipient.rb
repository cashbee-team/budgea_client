# frozen_string_literal: true

require 'date'

module BudgeaClient

  class Recipient
    # ID of the recipient
    attr_accessor :id

    # ID of the related account
    attr_accessor :id_account

    # ID of the target account, in case of internal recipient
    attr_accessor :id_target_account

    # Label of the recipient
    attr_accessor :label

    # Bank of the recipient
    attr_accessor :bank_name

    # IBAN of the recipient
    attr_accessor :iban

    # Webid of the recipient
    attr_accessor :webid

    # Category in which the recipient is
    attr_accessor :category

    # Last time we have fetched this recipient
    attr_accessor :last_update

    # First time we've seen this recipient
    attr_accessor :time_scraped

    # The recipient isn't found anymore on the bank
    attr_accessor :deleted

    attr_accessor :expire

    # It will be possible to do transfers to this recipient at this date
    attr_accessor :enabled_at

    # Was the recipient adding authorized
    attr_accessor :add_verified

    # Currency of the object
    attr_accessor :currency


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'id_account' => :'id_account',
        :'id_target_account' => :'id_target_account',
        :'label' => :'label',
        :'bank_name' => :'bank_name',
        :'iban' => :'iban',
        :'webid' => :'webid',
        :'category' => :'category',
        :'last_update' => :'last_update',
        :'time_scraped' => :'time_scraped',
        :'deleted' => :'deleted',
        :'expire' => :'expire',
        :'enabled_at' => :'enabled_at',
        :'add_verified' => :'add_verified',
        :'currency' => :'currency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'id_account' => :'Integer',
        :'id_target_account' => :'Integer',
        :'label' => :'String',
        :'bank_name' => :'String',
        :'iban' => :'String',
        :'webid' => :'String',
        :'category' => :'String',
        :'last_update' => :'DateTime',
        :'time_scraped' => :'DateTime',
        :'deleted' => :'DateTime',
        :'expire' => :'DateTime',
        :'enabled_at' => :'DateTime',
        :'add_verified' => :'BOOLEAN',
        :'currency' => :'Object'
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

      if attributes.has_key?(:'id_account')
        self.id_account = attributes[:'id_account']
      end

      if attributes.has_key?(:'id_target_account')
        self.id_target_account = attributes[:'id_target_account']
      end

      if attributes.has_key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.has_key?(:'bank_name')
        self.bank_name = attributes[:'bank_name']
      end

      if attributes.has_key?(:'iban')
        self.iban = attributes[:'iban']
      end

      if attributes.has_key?(:'webid')
        self.webid = attributes[:'webid']
      end

      if attributes.has_key?(:'category')
        self.category = attributes[:'category']
      end

      if attributes.has_key?(:'last_update')
        self.last_update = attributes[:'last_update']
      end

      if attributes.has_key?(:'time_scraped')
        self.time_scraped = attributes[:'time_scraped']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.has_key?(:'expire')
        self.expire = attributes[:'expire']
      end

      if attributes.has_key?(:'enabled_at')
        self.enabled_at = attributes[:'enabled_at']
      end

      if attributes.has_key?(:'add_verified')
        self.add_verified = attributes[:'add_verified']
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
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @id_account.nil?
        invalid_properties.push("invalid value for 'id_account', id_account cannot be nil.")
      end

      if @label.nil?
        invalid_properties.push("invalid value for 'label', label cannot be nil.")
      end

      if @category.nil?
        invalid_properties.push("invalid value for 'category', category cannot be nil.")
      end

      if @last_update.nil?
        invalid_properties.push("invalid value for 'last_update', last_update cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id_account.nil?
      return false if @label.nil?
      return false if @category.nil?
      return false if @last_update.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          id_account == o.id_account &&
          id_target_account == o.id_target_account &&
          label == o.label &&
          bank_name == o.bank_name &&
          iban == o.iban &&
          webid == o.webid &&
          category == o.category &&
          last_update == o.last_update &&
          time_scraped == o.time_scraped &&
          deleted == o.deleted &&
          expire == o.expire &&
          enabled_at == o.enabled_at &&
          add_verified == o.add_verified &&
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
      [id, id_account, id_target_account, label, bank_name, iban, webid, category, last_update, time_scraped, deleted, expire, enabled_at, add_verified, currency].hash
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
