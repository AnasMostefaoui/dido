module Dido
  module Utils

    class Carthage

      def initialize(path, config)
        @path = path
        @config = config
      end

      def update
        puts `carthage update ./#{@config.name}`
      end

    end

  end
end
