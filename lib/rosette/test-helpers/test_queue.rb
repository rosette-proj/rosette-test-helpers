# encoding: UTF-8

require 'rosette/queuing'

module Rosette
  module Queuing
    module TestQueue

      class Configurator
      end

      class Queue
        class << self
          def list
            @list ||= []
          end

          def clear
            list.clear
          end
        end

        attr_reader :configurator

        def initialize(configurator)
          @configurator = configurator
        end

        def enqueue(job)
          self.class.list << job
        end
      end

      class Worker
        attr_reader :rosette_config, :logger

        def initialize(rosette_config, logger, options = {})
          @rosette_config = rosette_config
          @logger = logger
        end

        def start
          until Queue.list.empty?
            Queue.list.shift.work
          end
        end
      end

    end
  end
end
