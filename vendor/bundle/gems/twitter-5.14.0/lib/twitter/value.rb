module Twitter
  class Value
    def self.new(*fields, &block)
      Class.new do
        attr_reader(:hash, *fields)

        const_set :VALUE_ATTRS, fields

        define_method(:initialize) do |hash|
          unexpected_keys = hash.keys - self::VALUE_ATTRS
          if unexpected_keys.any?
            fail ArgumentError.new("Unexpected hash keys: #{unexpected_keys}")
          end

          hash.values_at(*self::VALUE_ATTRS).zip(hash.values) do |field, value|
            instance_variable_set(:"@#{field}", value)
          end

          @hash = self.class.hash ^ hash.values.hash

          freeze
        end

        def ==(other)
          eql?(other)
        end

        def eql?(other)
          self.class == other.class && values == other.values
        end

        def values
          self.class::VALUE_ATTRS.map { |field| send(field) }
        end

        class_eval(&block) if block
      end
    end
  end
end
