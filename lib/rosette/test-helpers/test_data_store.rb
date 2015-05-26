# encoding: UTF-8

require 'rosette/data_stores'

module Rosette
  module DataStores

    class TestDataStore
      attr_reader :options

      def initialize(options)
        @options = options
      end
    end

  end
end
