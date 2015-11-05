module Dido
  module Utils

    class Builder

      def initialize(path, config)
        @path = path
        @config = config
      end

      def test
        puts `xcodebuild build -project ./#{@config.name}/#{@config.name}.xcodeproj -scheme "#{@config.name} iOS" ONLY_ACTIVE_ARCH=NO | grep -A 5 error`
        puts `xcodebuild build -project ./#{@config.name}/#{@config.name}.xcodeproj -scheme "#{@config.name} OSX" ONLY_ACTIVE_ARCH=NO | grep -A 5 error`
        puts `xcodebuild build -project ./#{@config.name}/#{@config.name}.xcodeproj -scheme "#{@config.name} tvOS" ONLY_ACTIVE_ARCH=NO | grep -A 5 error`
        puts `xcodebuild build -project ./#{@config.name}/#{@config.name}.xcodeproj -scheme "#{@config.name} watchOS" ONLY_ACTIVE_ARCH=NO | grep -A 5 error`
      end

    end

  end
end
