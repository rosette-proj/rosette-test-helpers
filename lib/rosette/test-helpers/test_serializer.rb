# encoding: UTF-8

module Rosette
  module Serializers

    module Test
      class TestSerializer < Rosette::Serializers::Serializer
        def self.default_extension
          '.txt'
        end

        def write_key_value(key, value)
          stream.write("#{key} = #{value}\n")
        end

        def write_raw(text)
          stream.write(text)
        end

        def close
        end
      end
    end

  end
end
