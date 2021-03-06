=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module BudgeaClient
  # /!\\ Careful we use default value from database if present      For more information see AlertsPlugin.init
  class UserAlert
    attr_accessor :id

    attr_accessor :income_max

    attr_accessor :expense_max

    attr_accessor :balance_min1

    attr_accessor :balance_min2

    attr_accessor :balance_max

    attr_accessor :resume_enabled

    attr_accessor :enabled

    attr_accessor :value_type

    attr_accessor :type

    attr_accessor :transaction_types

    attr_accessor :date_range

    attr_accessor :apply

    attr_accessor :resume_frequency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'income_max' => :'income_max',
        :'expense_max' => :'expense_max',
        :'balance_min1' => :'balance_min1',
        :'balance_min2' => :'balance_min2',
        :'balance_max' => :'balance_max',
        :'resume_enabled' => :'resume_enabled',
        :'enabled' => :'enabled',
        :'value_type' => :'value_type',
        :'type' => :'type',
        :'transaction_types' => :'transaction_types',
        :'date_range' => :'date_range',
        :'apply' => :'apply',
        :'resume_frequency' => :'resume_frequency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'income_max' => :'Float',
        :'expense_max' => :'Float',
        :'balance_min1' => :'Float',
        :'balance_min2' => :'Float',
        :'balance_max' => :'Float',
        :'resume_enabled' => :'BOOLEAN',
        :'enabled' => :'BOOLEAN',
        :'value_type' => :'String',
        :'type' => :'String',
        :'transaction_types' => :'String',
        :'date_range' => :'Integer',
        :'apply' => :'String',
        :'resume_frequency' => :'Integer'
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

      if attributes.has_key?(:'income_max')
        self.income_max = attributes[:'income_max']
      else
        self.income_max = 500.0
      end

      if attributes.has_key?(:'expense_max')
        self.expense_max = attributes[:'expense_max']
      else
        self.expense_max = 500.0
      end

      if attributes.has_key?(:'balance_min1')
        self.balance_min1 = attributes[:'balance_min1']
      else
        self.balance_min1 = 500.0
      end

      if attributes.has_key?(:'balance_min2')
        self.balance_min2 = attributes[:'balance_min2']
      else
        self.balance_min2 = 0.0
      end

      if attributes.has_key?(:'balance_max')
        self.balance_max = attributes[:'balance_max']
      else
        self.balance_max = 10000.0
      end

      if attributes.has_key?(:'resume_enabled')
        self.resume_enabled = attributes[:'resume_enabled']
      else
        self.resume_enabled = true
      end

      if attributes.has_key?(:'enabled')
        self.enabled = attributes[:'enabled']
      else
        self.enabled = true
      end

      if attributes.has_key?(:'value_type')
        self.value_type = attributes[:'value_type']
      else
        self.value_type = 'flat'
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      else
        self.type = 'transactions'
      end

      if attributes.has_key?(:'transaction_types')
        self.transaction_types = attributes[:'transaction_types']
      end

      if attributes.has_key?(:'date_range')
        self.date_range = attributes[:'date_range']
      end

      if attributes.has_key?(:'apply')
        self.apply = attributes[:'apply']
      end

      if attributes.has_key?(:'resume_frequency')
        self.resume_frequency = attributes[:'resume_frequency']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @value_type.nil?
        invalid_properties.push('invalid value for "value_type", value_type cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      if @resume_frequency.nil?
        invalid_properties.push('invalid value for "resume_frequency", resume_frequency cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @value_type.nil?
      return false if @type.nil?
      return false if @resume_frequency.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          income_max == o.income_max &&
          expense_max == o.expense_max &&
          balance_min1 == o.balance_min1 &&
          balance_min2 == o.balance_min2 &&
          balance_max == o.balance_max &&
          resume_enabled == o.resume_enabled &&
          enabled == o.enabled &&
          value_type == o.value_type &&
          type == o.type &&
          transaction_types == o.transaction_types &&
          date_range == o.date_range &&
          apply == o.apply &&
          resume_frequency == o.resume_frequency
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, income_max, expense_max, balance_min1, balance_min2, balance_max, resume_enabled, enabled, value_type, type, transaction_types, date_range, apply, resume_frequency].hash
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
