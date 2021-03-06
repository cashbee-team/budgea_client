=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'date'

module BudgeaClient
  class Webhook
    # ID of the webhook
    attr_accessor :id

    # Date of the webhook creation
    attr_accessor :created

    # Date of the webhook last update
    attr_accessor :updated

    # Date of the webhook deletion
    attr_accessor :deleted

    # ID of the service
    attr_accessor :id_service

    # ID of the emitter user
    attr_accessor :id_user

    # ID of the webhook event
    attr_accessor :id_event

    # ID of the authentication process
    attr_accessor :id_auth

    # URL of the webhook
    attr_accessor :url

    # json object to describe data to add
    attr_accessor :add_to_data

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created' => :'created',
        :'updated' => :'updated',
        :'deleted' => :'deleted',
        :'id_service' => :'id_service',
        :'id_user' => :'id_user',
        :'id_event' => :'id_event',
        :'id_auth' => :'id_auth',
        :'url' => :'url',
        :'add_to_data' => :'add_to_data'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'created' => :'DateTime',
        :'updated' => :'DateTime',
        :'deleted' => :'DateTime',
        :'id_service' => :'Integer',
        :'id_user' => :'Integer',
        :'id_event' => :'Integer',
        :'id_auth' => :'Integer',
        :'url' => :'String',
        :'add_to_data' => :'String'
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

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'updated')
        self.updated = attributes[:'updated']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.has_key?(:'id_service')
        self.id_service = attributes[:'id_service']
      end

      if attributes.has_key?(:'id_user')
        self.id_user = attributes[:'id_user']
      end

      if attributes.has_key?(:'id_event')
        self.id_event = attributes[:'id_event']
      end

      if attributes.has_key?(:'id_auth')
        self.id_auth = attributes[:'id_auth']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'add_to_data')
        self.add_to_data = attributes[:'add_to_data']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      if @updated.nil?
        invalid_properties.push('invalid value for "updated", updated cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @created.nil?
      return false if @updated.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created == o.created &&
          updated == o.updated &&
          deleted == o.deleted &&
          id_service == o.id_service &&
          id_user == o.id_user &&
          id_event == o.id_event &&
          id_auth == o.id_auth &&
          url == o.url &&
          add_to_data == o.add_to_data
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, created, updated, deleted, id_service, id_user, id_event, id_auth, url, add_to_data].hash
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
