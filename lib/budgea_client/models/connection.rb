# frozen_string_literal: true

require 'date'

module BudgeaClient

  class Connection
    # ID of connection
    attr_accessor :id

    # ID of the related user
    attr_accessor :id_user

    # ID of the related bank or provider
    attr_accessor :id_bank

    # Last successful update
    attr_accessor :last_update

    # If the last update has failed, the error code
    attr_accessor :error

    # Expiration of the connection. Used during add of a two-factor authentication, to purge the connection if the user abort
    attr_accessor :expire

    # This connection is active and will be automatically synced
    attr_accessor :active

    # Last successful push
    attr_accessor :last_push

    # Date of next synchronization
    attr_accessor :next_try


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'id_user' => :'id_user',
        :'id_bank' => :'id_bank',
        :'last_update' => :'last_update',
        :'error' => :'error',
        :'expire' => :'expire',
        :'active' => :'active',
        :'last_push' => :'last_push',
        :'next_try' => :'next_try'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'id_user' => :'Integer',
        :'id_bank' => :'Integer',
        :'last_update' => :'DateTime',
        :'error' => :'String',
        :'expire' => :'DateTime',
        :'active' => :'BOOLEAN',
        :'last_push' => :'DateTime',
        :'next_try' => :'DateTime'
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

      if attributes.has_key?(:'id_user')
        self.id_user = attributes[:'id_user']
      end

      if attributes.has_key?(:'id_bank')
        self.id_bank = attributes[:'id_bank']
      end

      if attributes.has_key?(:'last_update')
        self.last_update = attributes[:'last_update']
      end

      if attributes.has_key?(:'error')
        self.error = attributes[:'error']
      end

      if attributes.has_key?(:'expire')
        self.expire = attributes[:'expire']
      end

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      else
        self.active = true
      end

      if attributes.has_key?(:'last_push')
        self.last_push = attributes[:'last_push']
      end

      if attributes.has_key?(:'next_try')
        self.next_try = attributes[:'next_try']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @id_bank.nil?
        invalid_properties.push("invalid value for 'id_bank', id_bank cannot be nil.")
      end

      if @active.nil?
        invalid_properties.push("invalid value for 'active', active cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id_bank.nil?
      return false if @active.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          id_user == o.id_user &&
          id_bank == o.id_bank &&
          last_update == o.last_update &&
          error == o.error &&
          expire == o.expire &&
          active == o.active &&
          last_push == o.last_push &&
          next_try == o.next_try
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, id_user, id_bank, last_update, error, expire, active, last_push, next_try].hash
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
