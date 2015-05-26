# encoding: UTF-8

module Rosette
  module TestHelpers

    class FixturePhraseCommit
      attr_reader :phrase_map, :phrase_map_copy
      attr_reader :ref, :sha

      def initialize(ref, sha, phrase_map)
        @rev = ref
        @sha = sha
        @phrase_map = phrase_map
        reset
      end

      def reset
        @phrase_map_copy = phrase_map.each_with_object({}) do |(file, phrases), ret|
          ret[file] = phrases.dup
        end
      end

      def remove(phrase)
        phrase_map_copy[phrase.file].tap do |expected_phrases|
          expected_phrases.delete_if do |expected_phrase|
            expected_phrase == phrase.key
          end
        end
      end

      def has_more_phrases?
        phrase_map_copy.any? { |key, val| !val.empty? }
      end
    end

  end
end
