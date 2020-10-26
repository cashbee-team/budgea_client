=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module BudgeaClient
  class CreatePayment
    attr_accessor :openapiwebsite

    attr_accessor :client_state

    attr_accessor :validated

    # Date of payment registration
    attr_accessor :register_date

    # URL to validate payment
    attr_accessor :validate_uri

    # URL to redirecting to client
    attr_accessor :client_redirect_uri

    # ID of the related connector source
    attr_accessor :id_connector

    attr_accessor :instructions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'openapiwebsite' => :'openapiwebsite',
        :'client_state' => :'client_state',
        :'validated' => :'validated',
        :'register_date' => :'register_date',
        :'validate_uri' => :'validate_uri',
        :'client_redirect_uri' => :'client_redirect_uri',
        :'id_connector' => :'id_connector',
        :'instructions' => :'instructions'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'openapiwebsite' => :'String',
        :'client_state' => :'String',
        :'validated' => :'BOOLEAN',
        :'register_date' => :'DateTime',
        :'validate_uri' => :'String',
        :'client_redirect_uri' => :'String',
        :'id_connector' => :'Integer',
        :'instructions' => :'Array<CreatePaymentInstruction>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'openapiwebsite')
        self.openapiwebsite = attributes[:'openapiwebsite']
      end

      if attributes.has_key?(:'client_state')
        self.client_state = attributes[:'client_state']
      end

      if attributes.has_key?(:'validated')
        self.validated = attributes[:'validated']
      end

      if attributes.has_key?(:'register_date')
        self.register_date = attributes[:'register_date']
      end

      if attributes.has_key?(:'validate_uri')
        self.validate_uri = attributes[:'validate_uri']
      end

      if attributes.has_key?(:'client_redirect_uri')
        self.client_redirect_uri = attributes[:'client_redirect_uri']
      end

      if attributes.has_key?(:'id_connector')
        self.id_connector = attributes[:'id_connector']
      end

      if attributes.has_key?(:'instructions')
        if (value = attributes[:'instructions']).is_a?(Array)
          self.instructions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          openapiwebsite == o.openapiwebsite &&
          client_state == o.client_state &&
          validated == o.validated &&
          register_date == o.register_date &&
          validate_uri == o.validate_uri &&
          client_redirect_uri == o.client_redirect_uri &&
          id_connector == o.id_connector &&
          instructions == o.instructions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [openapiwebsite, client_state, validated, register_date, validate_uri, client_redirect_uri, id_connector, instructions].hash
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
