require "Dido/version"
require "Dido/entities/config"
require "Dido/utils/prompter"
require "thor"

module Dido

	class App < Thor

		desc "lib LIB_NAME", "create a lib with the provided name"
	  def lib(name)
      input = Utils::KeyboardInput.new()
	    config = Utils::Prompter.new(input).run(Entities::Config.new(name))
	  end

	end

end
