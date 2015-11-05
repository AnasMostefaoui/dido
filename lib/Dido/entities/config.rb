require 'set'

module Dido
	module Entities

		class Config

      attr_reader :organization
      attr_reader :name

			def initialize(name, organization)
        @name = name
        @organization = organization
			end
      
		end

	end
end
