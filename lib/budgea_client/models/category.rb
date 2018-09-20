# frozen_string_literal: true

require 'date'

module BudgeaClient

  class Category
    # ID of the category
    attr_accessor :id

    # ID of the parent category. If this is a parent category, it will be equal to its own ID
    attr_accessor :id_parent_category

    # Name of the category
    attr_accessor :name

    # Is an income category. If null, this is both an income and an expense category
    attr_accessor :income

    # Color of the category
    attr_accessor :color

    # ID of the parent category to be displayed
    attr_accessor :id_parent_category_in_menu

    # Displayed name, with HTML tags
    attr_accessor :name_displayed

    # This category accepts opposite sign of transactions
    attr_accessor :refundable

    # If not null, this category is specific to a user
    attr_accessor :id_user

    # ID of the logo
    attr_accessor :id_logo


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'id_parent_category' => :'id_parent_category',
        :'name' => :'name',
        :'income' => :'income',
        :'color' => :'color',
        :'id_parent_category_in_menu' => :'id_parent_category_in_menu',
        :'name_displayed' => :'name_displayed',
        :'refundable' => :'refundable',
        :'id_user' => :'id_user',
        :'id_logo' => :'id_logo'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'id_parent_category' => :'Integer',
        :'name' => :'String',
        :'income' => :'BOOLEAN',
        :'color' => :'String',
        :'id_parent_category_in_menu' => :'Integer',
        :'name_displayed' => :'String',
        :'refundable' => :'BOOLEAN',
        :'id_user' => :'Integer',
        :'id_logo' => :'Integer'
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

      if attributes.has_key?(:'id_parent_category')
        self.id_parent_category = attributes[:'id_parent_category']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'income')
        self.income = attributes[:'income']
      end

      if attributes.has_key?(:'color')
        self.color = attributes[:'color']
      end

      if attributes.has_key?(:'id_parent_category_in_menu')
        self.id_parent_category_in_menu = attributes[:'id_parent_category_in_menu']
      end

      if attributes.has_key?(:'name_displayed')
        self.name_displayed = attributes[:'name_displayed']
      end

      if attributes.has_key?(:'refundable')
        self.refundable = attributes[:'refundable']
      end

      if attributes.has_key?(:'id_user')
        self.id_user = attributes[:'id_user']
      end

      if attributes.has_key?(:'id_logo')
        self.id_logo = attributes[:'id_logo']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @id_parent_category.nil?
        invalid_properties.push("invalid value for 'id_parent_category', id_parent_category cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @color.nil?
        invalid_properties.push("invalid value for 'color', color cannot be nil.")
      end

      if @id_parent_category_in_menu.nil?
        invalid_properties.push("invalid value for 'id_parent_category_in_menu', id_parent_category_in_menu cannot be nil.")
      end

      if @refundable.nil?
        invalid_properties.push("invalid value for 'refundable', refundable cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id_parent_category.nil?
      return false if @name.nil?
      return false if @color.nil?
      return false if @id_parent_category_in_menu.nil?
      return false if @refundable.nil?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          id_parent_category == o.id_parent_category &&
          name == o.name &&
          income == o.income &&
          color == o.color &&
          id_parent_category_in_menu == o.id_parent_category_in_menu &&
          name_displayed == o.name_displayed &&
          refundable == o.refundable &&
          id_user == o.id_user &&
          id_logo == o.id_logo
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, id_parent_category, name, income, color, id_parent_category_in_menu, name_displayed, refundable, id_user, id_logo].hash
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
