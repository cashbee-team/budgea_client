=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'date'

module BudgeaClient
  class ConnectionSource
    # ID of connection
    attr_accessor :id

    # ID of the related connection
    attr_accessor :id_connection

    # ID of the related connector source
    attr_accessor :id_connector_source

    # Name of the connection source
    attr_accessor :name

    # Last successful update
    attr_accessor :last_update

    # This source is not used to synchronize the connection
    attr_accessor :disabled

    # Creation date of the connection source
    attr_accessor :created

    # If the last update has failed, the state code
    attr_accessor :state

    # Expiration date of the access
    attr_accessor :access_expire

    # Expiration of the connection source. Used to purge the connection in case completion was not finished
    attr_accessor :expire

    # Date of next synchronization
    attr_accessor :next_try

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'id_connection' => :'id_connection',
        :'id_connector_source' => :'id_connector_source',
        :'name' => :'name',
        :'last_update' => :'last_update',
        :'disabled' => :'disabled',
        :'created' => :'created',
        :'state' => :'state',
        :'access_expire' => :'access_expire',
        :'expire' => :'expire',
        :'next_try' => :'next_try'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'id_connection' => :'Integer',
        :'id_connector_source' => :'Integer',
        :'name' => :'String',
        :'last_update' => :'DateTime',
        :'disabled' => :'DateTime',
        :'created' => :'DateTime',
        :'state' => :'String',
        :'access_expire' => :'DateTime',
        :'expire' => :'DateTime',
        :'next_try' => :'DateTime'
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

      if attributes.has_key?(:'id_connection')
        self.id_connection = attributes[:'id_connection']
      end

      if attributes.has_key?(:'id_connector_source')
        self.id_connector_source = attributes[:'id_connector_source']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'last_update')
        self.last_update = attributes[:'last_update']
      end

      if attributes.has_key?(:'disabled')
        self.disabled = attributes[:'disabled']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'access_expire')
        self.access_expire = attributes[:'access_expire']
      end

      if attributes.has_key?(:'expire')
        self.expire = attributes[:'expire']
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
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id_connection.nil?
        invalid_properties.push('invalid value for "id_connection", id_connection cannot be nil.')
      end

      if @id_connector_source.nil?
        invalid_properties.push('invalid value for "id_connector_source", id_connector_source cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @created.nil?
        invalid_properties.push('invalid value for "created", created cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id_connection.nil?
      return false if @id_connector_source.nil?
      return false if @name.nil?
      return false if @created.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          id_connection == o.id_connection &&
          id_connector_source == o.id_connector_source &&
          name == o.name &&
          last_update == o.last_update &&
          disabled == o.disabled &&
          created == o.created &&
          state == o.state &&
          access_expire == o.access_expire &&
          expire == o.expire &&
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
      [id, id_connection, id_connector_source, name, last_update, disabled, created, state, access_expire, expire, next_try].hash
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
