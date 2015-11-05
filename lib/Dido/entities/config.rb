require 'set'

module Dido
	module Entities

		class Config

      attr_reader :org_id
      attr_reader :org_name
      attr_reader :name

			def initialize(name, org_id, org_name)
        @name = name
        @org_id = org_id
        @org_name = org_name
			end
      
		end

	end
end
