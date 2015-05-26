# encoding: UTF-8

require 'rosette/test_helpers/test_extractor'
require 'rosette/test_helpers/test_serializer'
require 'rosette/test_helpers/test_integration'
require 'rosette/test_helpers/test_data_store'
require 'rosette/test_helpers/test_queue'
require 'rosette/test_helpers/test_tms'
require 'rosette/test_helpers/null_logger'
require 'rosette/test_helpers/fake_commit_stage'
require 'rosette/test_helpers/fixture'
require 'rosette/test_helpers/fixture_phrase_commit'

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
