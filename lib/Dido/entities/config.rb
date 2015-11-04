require 'set'

module Dido
	module Entities

		class Config

      attr_reader :platforms
      attr_reader :name
      attr_reader

			def initialize(name, platforms = [])
        @name = name
        @platforms = Set.new platforms
			end

      def with_tv_os
        @platforms.add :tvos
        return Config.new(@name, @platforms)
      end

      def with_watch_os
        @platforms.add :watchos
        return Config.new(@name, @platforms)
      end

      def with_ios
        @platforms.add :ios
        return Config.new(@name, @platforms)
      end

      def with_osx
        @platforms.add :osx
        return Config.new(@name, @platforms)
      end
      
		end

	end
end