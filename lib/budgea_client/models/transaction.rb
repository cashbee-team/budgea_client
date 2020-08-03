=begin
#Budgea API Documentation

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.15

=end

require 'date'

module BudgeaClient
  class Transaction
    # ID of the transaction
    attr_accessor :id

    # ID of the related account
    attr_accessor :id_account

    # Webid of the transaction
    attr_accessor :webid

    # Date considered by PFM services. It is used to change the month of a transaction, for example.
    attr_accessor :application_date

    # Debit date
    attr_accessor :date

    # Value of the transaction
    attr_accessor :value

    # Gross value of the transaction
    attr_accessor :gross_value

    # Type of transaction
    attr_accessor :nature

    # Full label of the transaction
    attr_accessor :original_wording

    # Simplified label of the transaction
    attr_accessor :simplified_wording

    # Do not use it
    attr_accessor :stemmed_wording

    # Label set by the user
    attr_accessor :wording

    # ID of the related category
    attr_accessor :id_category

    # Internal state of the transaction
    attr_accessor :state

    # Date when the transaction has been seen
    attr_accessor :date_scraped

    # Realization of the transaction
    attr_accessor :rdate

    # Value date of the transaction
    attr_accessor :vdate

    # Date used by the bank for the transaction
    attr_accessor :bdate

    # If true, this transaction hasn't been yet debited
    attr_accessor :coming

    # If false, PFM services will ignore this transaction
    attr_accessor :active

    # If the transaction is part of a cluster
    attr_accessor :id_cluster

    # User comment
    attr_accessor :comment

    # Last update of the transaction
    attr_accessor :last_update

    # If set, this transaction has been removed from the bank
    attr_accessor :deleted

    # Value in the original currency
    attr_accessor :original_value

    # Gross value in the original currency
    attr_accessor :original_gross_value

    # Original currency
    attr_accessor :original_currency

    # Commission taken on the transaction
    attr_accessor :commission

    # Commission currency
    attr_accessor :commission_currency

    # Original country
    attr_accessor :country

    # Counterparty
    attr_accessor :counterparty

    # Card number associated to the transaction
    attr_accessor :card

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'id_account' => :'id_account',
        :'webid' => :'webid',
        :'application_date' => :'application_date',
        :'date' => :'date',
        :'value' => :'value',
        :'gross_value' => :'gross_value',
        :'nature' => :'nature',
        :'original_wording' => :'original_wording',
        :'simplified_wording' => :'simplified_wording',
        :'stemmed_wording' => :'stemmed_wording',
        :'wording' => :'wording',
        :'id_category' => :'id_category',
        :'state' => :'state',
        :'date_scraped' => :'date_scraped',
        :'rdate' => :'rdate',
        :'vdate' => :'vdate',
        :'bdate' => :'bdate',
        :'coming' => :'coming',
        :'active' => :'active',
        :'id_cluster' => :'id_cluster',
        :'comment' => :'comment',
        :'last_update' => :'last_update',
        :'deleted' => :'deleted',
        :'original_value' => :'original_value',
        :'original_gross_value' => :'original_gross_value',
        :'original_currency' => :'original_currency',
        :'commission' => :'commission',
        :'commission_currency' => :'commission_currency',
        :'country' => :'country',
        :'counterparty' => :'counterparty',
        :'card' => :'card'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'Integer',
        :'id_account' => :'Integer',
        :'webid' => :'String',
        :'application_date' => :'Date',
        :'date' => :'Date',
        :'value' => :'Float',
        :'gross_value' => :'Float',
        :'nature' => :'String',
        :'original_wording' => :'String',
        :'simplified_wording' => :'String',
        :'stemmed_wording' => :'String',
        :'wording' => :'String',
        :'id_category' => :'Integer',
        :'state' => :'String',
        :'date_scraped' => :'DateTime',
        :'rdate' => :'Date',
        :'vdate' => :'Date',
        :'bdate' => :'Date',
        :'coming' => :'BOOLEAN',
        :'active' => :'BOOLEAN',
        :'id_cluster' => :'Integer',
        :'comment' => :'String',
        :'last_update' => :'DateTime',
        :'deleted' => :'DateTime',
        :'original_value' => :'Float',
        :'original_gross_value' => :'Float',
        :'original_currency' => :'Object',
        :'commission' => :'Float',
        :'commission_currency' => :'Object',
        :'country' => :'String',
        :'counterparty' => :'String',
        :'card' => :'String'
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

      if attributes.has_key?(:'webid')
        self.webid = attributes[:'webid']
      end

      if attributes.has_key?(:'application_date')
        self.application_date = attributes[:'application_date']
      end

      if attributes.has_key?(:'date')
        self.date = attributes[:'date']
      end

      if attributes.has_key?(:'value')
        self.value = attributes[:'value']
      end

      if attributes.has_key?(:'gross_value')
        self.gross_value = attributes[:'gross_value']
      end

      if attributes.has_key?(:'nature')
        self.nature = attributes[:'nature']
      else
        self.nature = 'inconnu'
      end

      if attributes.has_key?(:'original_wording')
        self.original_wording = attributes[:'original_wording']
      end

      if attributes.has_key?(:'simplified_wording')
        self.simplified_wording = attributes[:'simplified_wording']
      end

      if attributes.has_key?(:'stemmed_wording')
        self.stemmed_wording = attributes[:'stemmed_wording']
      end

      if attributes.has_key?(:'wording')
        self.wording = attributes[:'wording']
      end

      if attributes.has_key?(:'id_category')
        self.id_category = attributes[:'id_category']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      else
        self.state = 'new'
      end

      if attributes.has_key?(:'date_scraped')
        self.date_scraped = attributes[:'date_scraped']
      end

      if attributes.has_key?(:'rdate')
        self.rdate = attributes[:'rdate']
      end

      if attributes.has_key?(:'vdate')
        self.vdate = attributes[:'vdate']
      end

      if attributes.has_key?(:'bdate')
        self.bdate = attributes[:'bdate']
      end

      if attributes.has_key?(:'coming')
        self.coming = attributes[:'coming']
      end

      if attributes.has_key?(:'active')
        self.active = attributes[:'active']
      else
        self.active = true
      end

      if attributes.has_key?(:'id_cluster')
        self.id_cluster = attributes[:'id_cluster']
      end

      if attributes.has_key?(:'comment')
        self.comment = attributes[:'comment']
      end

      if attributes.has_key?(:'last_update')
        self.last_update = attributes[:'last_update']
      end

      if attributes.has_key?(:'deleted')
        self.deleted = attributes[:'deleted']
      end

      if attributes.has_key?(:'original_value')
        self.original_value = attributes[:'original_value']
      end

      if attributes.has_key?(:'original_gross_value')
        self.original_gross_value = attributes[:'original_gross_value']
      end

      if attributes.has_key?(:'original_currency')
        self.original_currency = attributes[:'original_currency']
      end

      if attributes.has_key?(:'commission')
        self.commission = attributes[:'commission']
      end

      if attributes.has_key?(:'commission_currency')
        self.commission_currency = attributes[:'commission_currency']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'counterparty')
        self.counterparty = attributes[:'counterparty']
      end

      if attributes.has_key?(:'card')
        self.card = attributes[:'card']
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

      if @date.nil?
        invalid_properties.push('invalid value for "date", date cannot be nil.')
      end

      if @nature.nil?
        invalid_properties.push('invalid value for "nature", nature cannot be nil.')
      end

      if @original_wording.nil?
        invalid_properties.push('invalid value for "original_wording", original_wording cannot be nil.')
      end

      if @simplified_wording.nil?
        invalid_properties.push('invalid value for "simplified_wording", simplified_wording cannot be nil.')
      end

      if @stemmed_wording.nil?
        invalid_properties.push('invalid value for "stemmed_wording", stemmed_wording cannot be nil.')
      end

      if @state.nil?
        invalid_properties.push('invalid value for "state", state cannot be nil.')
      end

      if @date_scraped.nil?
        invalid_properties.push('invalid value for "date_scraped", date_scraped cannot be nil.')
      end

      if @rdate.nil?
        invalid_properties.push('invalid value for "rdate", rdate cannot be nil.')
      end

      if @coming.nil?
        invalid_properties.push('invalid value for "coming", coming cannot be nil.')
      end

      if @active.nil?
        invalid_properties.push('invalid value for "active", active cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @id_account.nil?
      return false if @date.nil?
      return false if @nature.nil?
      return false if @original_wording.nil?
      return false if @simplified_wording.nil?
      return false if @stemmed_wording.nil?
      return false if @state.nil?
      return false if @date_scraped.nil?
      return false if @rdate.nil?
      return false if @coming.nil?
      return false if @active.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          id_account == o.id_account &&
          webid == o.webid &&
          application_date == o.application_date &&
          date == o.date &&
          value == o.value &&
          gross_value == o.gross_value &&
          nature == o.nature &&
          original_wording == o.original_wording &&
          simplified_wording == o.simplified_wording &&
          stemmed_wording == o.stemmed_wording &&
          wording == o.wording &&
          id_category == o.id_category &&
          state == o.state &&
          date_scraped == o.date_scraped &&
          rdate == o.rdate &&
          vdate == o.vdate &&
          bdate == o.bdate &&
          coming == o.coming &&
          active == o.active &&
          id_cluster == o.id_cluster &&
          comment == o.comment &&
          last_update == o.last_update &&
          deleted == o.deleted &&
          original_value == o.original_value &&
          original_gross_value == o.original_gross_value &&
          original_currency == o.original_currency &&
          commission == o.commission &&
          commission_currency == o.commission_currency &&
          country == o.country &&
          counterparty == o.counterparty &&
          card == o.card
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, id_account, webid, application_date, date, value, gross_value, nature, original_wording, simplified_wording, stemmed_wording, wording, id_category, state, date_scraped, rdate, vdate, bdate, coming, active, id_cluster, comment, last_update, deleted, original_value, original_gross_value, original_currency, commission, commission_currency, country, counterparty, card].hash
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
