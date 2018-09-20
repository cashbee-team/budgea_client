# frozen_string_literal: true

require 'date'

module BudgeaClient

  class Project
    attr_accessor :id

    attr_accessor :id_user

    attr_accessor :id_type

    attr_accessor :name

    attr_accessor :target

    attr_accessor :saved

    attr_accessor :monthly_savings

    attr_accessor :comment

    attr_accessor :active


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'id_user' => :'id_user',
        :'id_type' => :'id_type',
        :'name' => :'name',
        :'target' => :'target',
        :'saved' => :'saved',
        :'monthly_savings' => :'monthly_savings',
        :'comment' => :'comment',
        :'active' => :'active'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'id_user' => :'Integer',
        :'id_type' => :'Integer',
        :'name' => :'String',
        :'target' => :'Float',
        :'saved' => :'Float',
        :'monthly_savings' => :'Float',
        :'comment' => :'String',
        :'active' => :'BOOLEAN'
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

      if attributes.has_key?(:'id_type')
        self.id_type = attributes[:'id_type']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'target')
        self.target = attributes[:'target']
      end

      if attributes.has_key?(:'saved')
        self.saved = attributes[:'saved']
      else
        self.saved = 0.0
      end

      if attributes.has_key?(:'monthly_savings')
        self.monthly_savings = attributes[:'monthly_savings']
      end

      if attributes.has_key?(:'comment')
        self.comment = attributes[:'comment']
      else
        self.comment = ""
      end

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      else
        self.active = true
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

      if @id_type.nil?
        invalid_properties.push("invalid value for 'id_type', id_type cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @target.nil?
        invalid_properties.push("invalid value for 'target', target cannot be nil.")
      end

      if @saved.nil?
        invalid_properties.push("invalid value for 'saved', saved cannot be nil.")
      end

      if @monthly_savings.nil?
        invalid_properties.push("invalid value for 'monthly_savings', monthly_savings cannot be nil.")
      end

      if @comment.nil?
        invalid_properties.push("invalid value for 'comment', comment cannot be nil.")
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
      return false if @id_user.nil?
      return false if @id_type.nil?
      return false if @name.nil?
      return false if @target.nil?
      return false if @saved.nil?
      return false if @monthly_savings.nil?
      return false if @comment.nil?
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
          id_type == o.id_type &&
          name == o.name &&
          target == o.target &&
          saved == o.saved &&
          monthly_savings == o.monthly_savings &&
          comment == o.comment &&
          active == o.active
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, id_user, id_type, name, target, saved, monthly_savings, comment, active].hash
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
