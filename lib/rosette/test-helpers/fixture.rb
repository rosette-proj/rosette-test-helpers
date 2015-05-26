# encoding: UTF-8

module Rosette
  module TestHelpers

    class Fixture
      attr_reader :config, :properties, :repo_fixture

      def initialize(config, properties, repo_fixture)
        @config = config
        @properties = properties
        @repo_fixture = repo_fixture
      end

      def respond_to?(method)
        super || repo_fixture.respond_to?(method)
      end

      def method_missing(method, *args, &block)
        repo_fixture.send(method, *args, &block)
      end

      def each_commit
        if block_given?
          properties[:phrases].each_pair do |ref, phrase_hash|
            sha = repo_fixture.git("rev-parse #{ref}").strip
            yield FixturePhraseCommit.new(ref, sha, phrase_hash)
          end
        else
          to_enum(__method__)
        end
      end
    end

  end
end
