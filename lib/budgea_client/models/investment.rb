=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.1

=end

require 'date'

module BudgeaClient
  class Investment
    # ID of the investment
    attr_accessor :id

    # ID of the related account
    attr_accessor :id_account

    # Label of the investment
    attr_accessor :label

    # Investment code
    attr_accessor :code

    # Code type (ISIN of AMF)
    attr_accessor :code_type

    # Source of the ISIN code (website, notFound)
    attr_accessor :source

    # Description of the investment
    attr_accessor :description

    # Quantity
    attr_accessor :quantity

    # Average buy price
    attr_accessor :unitprice

    # Current unit value
    attr_accessor :unitvalue

    # Current valuation
    attr_accessor :valuation

    # Capital gain
    attr_accessor :diff

    # Capital gain in percent (between 0 and 1)
    attr_accessor :diff_percent

    # Capital gain from previous value
    attr_accessor :prev_diff

    # Percent of the portfolio
    attr_accessor :portfolio_share

    # Value date
    attr_accessor :vdate

    # Value date of the previous value (prev_diff)
    attr_accessor :prev_vdate

    # ID of the related security
    attr_accessor :id_security

    # Original currency
    attr_accessor :original_currency

    # Valuation in original currency
    attr_accessor :original_valuation

    # Average buy price in the original currency
    attr_accessor :original_unitvalue

    # Current unit value in the original currency
    attr_accessor :original_unitprice

    # Capital gain in the original currency
    attr_accessor :original_diff

    # Last update of the investment
    attr_accessor :last_update

    # If set, this investment has been removed from the website
    attr_accessor :deleted

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'id_account' => :'id_account',
        :'label' => :'label',
        :'code' => :'code',
        :'code_type' => :'code_type',
        :'source' => :'source',
        :'description' => :'description',
        :'quantity' => :'quantity',
        :'unitprice' => :'unitprice',
        :'unitvalue' => :'unitvalue',
        :'valuation' => :'valuation',
        :'diff' => :'diff',
        :'diff_percent' => :'diff_percent',
        :'prev_diff' => :'prev_diff',
        :'portfolio_share' => :'portfolio_share',
        :'vdate' => :'vdate',
        :'prev_vdate' => :'prev_vdate',
        :'id_security' => :'id_security',
        :'original_currency' => :'original_currency',
        :'original_valuation' => :'original_valuation',
        :'original_unitvalue' => :'original_unitvalue',
        :'original_unitprice' => :'original_unitprice',
        :'original_diff' => :'original_diff',
        :'last_update' => :'last_update',
        :'deleted' => :'deleted'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'id_account' => :'Integer',
        :'label' => :'String',
        :'code' => :'String',
        :'code_type' => :'String',
        :'source' => :'String',
        :'description' => :'String',
        :'quantity' => :'Float',
        :'unitprice' => :'Float',
        :'unitvalue' => :'Float',
        :'valuation' => :'Float',
        :'diff' => :'Float',
        :'diff_percent' => :'Float',
        :'prev_diff' => :'Float',
        :'portfolio_share' => :'Float',
        :'vdate' => :'Date',
        :'prev_vdate' => :'Date',
        :'id_security' => :'Integer',
        :'original_currency' => :'Object',
        :'original_valuation' => :'Float',
        :'original_unitvalue' => :'Float',
        :'original_unitprice' => :'Float',
        :'original_diff' => :'Float',
        :'last_update' => :'DateTime',
        :'deleted' => :'DateTime'
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

      if attributes.has_key?(:'id_account')
        self.id_account = attributes[:'id_account']
      end

      if attributes.has_key?(:'label')
        self.label = attributes[:'label']
      end

      if attributes.has_key?(:'code')
        self.code = attributes[:'code']
      end

      if attributes.has_key?(:'code_type')
        self.code_type = attributes[:'code_type']
      end

      if attributes.has_key?(:'source')
        self.source = attributes[:'source']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      else
        self.quantity = 0.0
      end

      if attributes.has_key?(:'unitprice')
        self.unitprice = attributes[:'unitprice']
      else
        self.unitprice = 0.0
      end

      if attributes.has_key?(:'unitvalue')
        self.unitvalue = attributes[:'unitvalue']
      else
        self.unitvalue = 0.0
      end

      if attributes.has_key?(:'valuation')
        self.valuation = attributes[:'valuation']
      else
        self.valuation = 0.0
      end

      if attributes.has_key?(:'diff')
        self.diff = attributes[:'diff']
      else
        self.diff = 0.0
      end

      if attributes.has_key?(:'diff_percent')
        self.diff_percent = attributes[:'diff_percent']
      end

      if attributes.has_key?(:'prev_diff')
        self.prev_diff = attributes[:'prev_diff']
      end

      if attributes.has_key?(:'portfolio_share')
        self.portfolio_share = attributes[:'portfolio_share']
      end

      if attributes.has_key?(:'vdate')
        self.vdate = attributes[:'vdate']
      end

      if attributes.has_key?(:'prev_vdate')
        self.prev_vdate = attributes[:'prev_vdate']
      end

      if attributes.has_key?(:'id_security')
        self.id_security = attributes[:'id_security']
      end

      if attributes.has_key?(:'original_currency')
        self.original_currency = attributes[:'original_currency']
      end

      if attributes.has_key?(:'original_valuation')
        self.original_valuation = attributes[:'original_valuation']
      end

      if attributes.has_key?(:'original_unitvalue')
        self.original_unitvalue = attributes[:'original_unitvalue']
      end

      if attributes.has_key?(:'original_unitprice')
        self.original_unitprice = attributes[:'original_unitprice']
      end

      if attributes.has_key?(:'original_diff')
        self.original_diff = attributes[:'original_diff']
      end

      if attributes.has_key?(:'last_update')
        self.last_update = attributes[:'last_update']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @id_account.nil?
        invalid_properties.push('invalid value for "id_account", id_account cannot be nil.')
      end

      if @label.nil?
        invalid_properties.push('invalid value for "label", label cannot be nil.')
      end

      if @code.nil?
        invalid_properties.push('invalid value for "code", code cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id_account.nil?
      return false if @label.nil?
      return false if @code.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          id_account == o.id_account &&
          label == o.label &&
          code == o.code &&
          code_type == o.code_type &&
          source == o.source &&
          description == o.description &&
          quantity == o.quantity &&
          unitprice == o.unitprice &&
          unitvalue == o.unitvalue &&
          valuation == o.valuation &&
          diff == o.diff &&
          diff_percent == o.diff_percent &&
          prev_diff == o.prev_diff &&
          portfolio_share == o.portfolio_share &&
          vdate == o.vdate &&
          prev_vdate == o.prev_vdate &&
          id_security == o.id_security &&
          original_currency == o.original_currency &&
          original_valuation == o.original_valuation &&
          original_unitvalue == o.original_unitvalue &&
          original_unitprice == o.original_unitprice &&
          original_diff == o.original_diff &&
          last_update == o.last_update &&
          deleted == o.deleted
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, id_account, label, code, code_type, source, description, quantity, unitprice, unitvalue, valuation, diff, diff_percent, prev_diff, portfolio_share, vdate, prev_vdate, id_security, original_currency, original_valuation, original_unitvalue, original_unitprice, original_diff, last_update, deleted].hash
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
