=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.14

=end

require 'date'

module BudgeaClient
  class Document
    attr_accessor :id

    attr_accessor :id_type

    attr_accessor :id_category

    attr_accessor :id_user

    attr_accessor :id_subscription

    attr_accessor :id_file

    attr_accessor :id_thumbnail

    attr_accessor :name

    attr_accessor :timestamp

    attr_accessor :date

    attr_accessor :duedate

    attr_accessor :total_amount

    attr_accessor :untaxed_amount

    attr_accessor :vat

    attr_accessor :income

    attr_accessor :readonly

    attr_accessor :number

    attr_accessor :issuer

    # Last successful update of the document
    attr_accessor :last_update

    # Boolean to set if file is available on website
    attr_accessor :has_file_on_website

    # Document currency
    attr_accessor :currency

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'id_type' => :'id_type',
        :'id_category' => :'id_category',
        :'id_user' => :'id_user',
        :'id_subscription' => :'id_subscription',
        :'id_file' => :'id_file',
        :'id_thumbnail' => :'id_thumbnail',
        :'name' => :'name',
        :'timestamp' => :'timestamp',
        :'date' => :'date',
        :'duedate' => :'duedate',
        :'total_amount' => :'total_amount',
        :'untaxed_amount' => :'untaxed_amount',
        :'vat' => :'vat',
        :'income' => :'income',
        :'readonly' => :'readonly',
        :'number' => :'number',
        :'issuer' => :'issuer',
        :'last_update' => :'last_update',
        :'has_file_on_website' => :'has_file_on_website',
        :'currency' => :'currency'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'id_type' => :'Integer',
        :'id_category' => :'Integer',
        :'id_user' => :'Integer',
        :'id_subscription' => :'Integer',
        :'id_file' => :'Integer',
        :'id_thumbnail' => :'Integer',
        :'name' => :'String',
        :'timestamp' => :'DateTime',
        :'date' => :'DateTime',
        :'duedate' => :'Date',
        :'total_amount' => :'Float',
        :'untaxed_amount' => :'Float',
        :'vat' => :'Float',
        :'income' => :'BOOLEAN',
        :'readonly' => :'BOOLEAN',
        :'number' => :'String',
        :'issuer' => :'String',
        :'last_update' => :'DateTime',
        :'has_file_on_website' => :'BOOLEAN',
        :'currency' => :'Object'
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

      if attributes.has_key?(:'id_type')
        self.id_type = attributes[:'id_type']
      end

      if attributes.has_key?(:'id_category')
        self.id_category = attributes[:'id_category']
      end

      if attributes.has_key?(:'id_user')
        self.id_user = attributes[:'id_user']
      end

      if attributes.has_key?(:'id_subscription')
        self.id_subscription = attributes[:'id_subscription']
      end

      if attributes.has_key?(:'id_file')
        self.id_file = attributes[:'id_file']
      end

      if attributes.has_key?(:'id_thumbnail')
        self.id_thumbnail = attributes[:'id_thumbnail']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'duedate')
        self.duedate = attributes[:'duedate']
      end

      if attributes.has_key?(:'total_amount')
        self.total_amount = attributes[:'total_amount']
      end

      if attributes.has_key?(:'untaxed_amount')
        self.untaxed_amount = attributes[:'untaxed_amount']
      end

      if attributes.has_key?(:'vat')
        self.vat = attributes[:'vat']
      end

      if attributes.has_key?(:'income')
        self.income = attributes[:'income']
      else
        self.income = true
      end

      if attributes.has_key?(:'readonly')
        self.readonly = attributes[:'readonly']
      else
        self.readonly = true
      end

      if attributes.has_key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.has_key?(:'issuer')
        self.issuer = attributes[:'issuer']
      end

      if attributes.has_key?(:'last_update')
        self.last_update = attributes[:'last_update']
      end

      if attributes.has_key?(:'has_file_on_website')
        self.has_file_on_website = attributes[:'has_file_on_website']
      else
        self.has_file_on_website = true
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
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id_user.nil?
        invalid_properties.push('invalid value for "id_user", id_user cannot be nil.')
      end

      if @timestamp.nil?
        invalid_properties.push('invalid value for "timestamp", timestamp cannot be nil.')
      end

      if @readonly.nil?
        invalid_properties.push('invalid value for "readonly", readonly cannot be nil.')
      end

      if @has_file_on_website.nil?
        invalid_properties.push('invalid value for "has_file_on_website", has_file_on_website cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id_user.nil?
      return false if @timestamp.nil?
      return false if @readonly.nil?
      return false if @has_file_on_website.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          id_type == o.id_type &&
          id_category == o.id_category &&
          id_user == o.id_user &&
          id_subscription == o.id_subscription &&
          id_file == o.id_file &&
          id_thumbnail == o.id_thumbnail &&
          name == o.name &&
          timestamp == o.timestamp &&
          date == o.date &&
          duedate == o.duedate &&
          total_amount == o.total_amount &&
          untaxed_amount == o.untaxed_amount &&
          vat == o.vat &&
          income == o.income &&
          readonly == o.readonly &&
          number == o.number &&
          issuer == o.issuer &&
          last_update == o.last_update &&
          has_file_on_website == o.has_file_on_website &&
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
      [id, id_type, id_category, id_user, id_subscription, id_file, id_thumbnail, name, timestamp, date, duedate, total_amount, untaxed_amount, vat, income, readonly, number, issuer, last_update, has_file_on_website, currency].hash
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
