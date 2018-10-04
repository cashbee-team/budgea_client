# frozen_string_literal: true

require 'date'

module BudgeaClient

  class Bank
    # ID of the connector
    attr_accessor :id

    # Name of the bank or provider
    attr_accessor :name

    attr_accessor :id_weboob

    # This connector is hidden from your users
    attr_accessor :hidden

    # Usage of this connector is charged
    attr_accessor :charged

    # Bank code
    attr_accessor :code

    # If true, this connector is perhaps unstable :)
    attr_accessor :beta

    # Main color of the bank or provider
    attr_accessor :color

    attr_accessor :slug

    # How many days to wait between syncs
    attr_accessor :sync_frequency

    # How many months of history to fetch
    attr_accessor :months_to_fetch

    attr_accessor :account_types

    attr_accessor :fields


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'name' => :'name',
        :'id_weboob' => :'id_weboob',
        :'hidden' => :'hidden',
        :'charged' => :'charged',
        :'code' => :'code',
        :'beta' => :'beta',
        :'color' => :'color',
        :'slug' => :'slug',
        :'sync_frequency' => :'sync_frequency',
        :'months_to_fetch' => :'months_to_fetch',
        :'account_types' => :'account_types',
        :'fields' => :'fields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'name' => :'String',
        :'id_weboob' => :'String',
        :'hidden' => :'BOOLEAN',
        :'charged' => :'BOOLEAN',
        :'code' => :'String',
        :'beta' => :'BOOLEAN',
        :'color' => :'String',
        :'slug' => :'String',
        :'sync_frequency' => :'Float',
        :'months_to_fetch' => :'Integer',
        :'account_types' => :'Array<String>',
        :'fields' => :'Array<Field>'
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

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'id_weboob')
        self.id_weboob = attributes[:'id_weboob']
      end

      if attributes.has_key?(:'hidden')
        self.hidden = attributes[:'hidden']
      else
        self.hidden = false
      end

      if attributes.has_key?(:'charged')
        self.charged = attributes[:'charged']
      else
        self.charged = true
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'beta')
        self.beta = attributes[:'beta']
      else
        self.beta = false
      end

      if attributes.has_key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.has_key?(:'slug')
        self.slug = attributes[:'slug']
      end

      if attributes.has_key?(:'sync_frequency')
        self.sync_frequency = attributes[:'sync_frequency']
      end

      if attributes.has_key?(:'months_to_fetch')
        self.months_to_fetch = attributes[:'months_to_fetch']
      end

      if attributes.has_key?(:'account_types')
        if (value = attributes[:'account_types']).is_a?(Array)
          self.account_types = value
        end
      end

      if attributes.has_key?(:'fields')
        if (value = attributes[:'fields']).is_a?(Array)
          self.fields = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @id_weboob.nil?
        invalid_properties.push("invalid value for 'id_weboob', id_weboob cannot be nil.")
      end

      if @charged.nil?
        invalid_properties.push("invalid value for 'charged', charged cannot be nil.")
      end

      if @beta.nil?
        invalid_properties.push("invalid value for 'beta', beta cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @name.nil?
      return false if @id_weboob.nil?
      return false if @charged.nil?
      return false if @beta.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          name == o.name &&
          id_weboob == o.id_weboob &&
          hidden == o.hidden &&
          charged == o.charged &&
          code == o.code &&
          beta == o.beta &&
          color == o.color &&
          slug == o.slug &&
          sync_frequency == o.sync_frequency &&
          months_to_fetch == o.months_to_fetch &&
          account_types == o.account_types &&
          fields == o.fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, name, id_weboob, hidden, charged, code, beta, color, slug, sync_frequency, months_to_fetch, account_types, fields].hash
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
