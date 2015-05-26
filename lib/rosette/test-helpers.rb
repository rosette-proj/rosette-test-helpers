# encoding: UTF-8

require 'rosette/test-helpers/test_extractor'
require 'rosette/test-helpers/test_serializer'
require 'rosette/test-helpers/test_integration'
require 'rosette/test-helpers/test_data_store'
require 'rosette/test-helpers/test_queue'
require 'rosette/test-helpers/test_tms'
require 'rosette/test-helpers/null_logger'
require 'rosette/test-helpers/fixture'
require 'rosette/test-helpers/fixtures'
require 'rosette/test-helpers/fixture_phrase_commit'

module Rosette
  module TestHelpers
    class << self

      def fixture_path
        @fixture_path ||= File.join(
          File.expand_path('./', File.dirname(__FILE__)), 'fixtures/repos'
        )
      end

      def fixture_bin_path
        File.join(fixture_path, 'bin')
      end

      def fixture_lib_path
        File.join(fixture_path, 'lib')
      end

    end
  end
end
