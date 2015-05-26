# encoding: UTF-8

require 'rosette/queuing'

module Rosette
  module Queuing
    module Commits

      class FakeStage < Stage
        accepts *PhraseStatus.all

        def execute!
          commit_log.status = 'fake_stage_updated_me'
        end
      end

    end
  end
end
