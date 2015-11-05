require "Dido/version"
require "Dido/entities/config"
require "Dido/utils/git"
require "Dido/utils/templater"
require "Dido/utils/builder"
require "Dido/utils/carthage"
require "thor"
require "colorize"

module Dido

	class App < Thor

		desc "lib LIB_NAME", "create a lib with the provided name"
    option :org_id, :type => :string, :required => true, :desc => "Framework organization identifier (e.g. io.GitDo)"
    option :org_name, :type => :string, :required => true, :desc => "Framework organization name (e.g. GitDo)"
	  def lib(name)
      config = Entities::Config.new(name, options[:org_id], options[:org_name])
      clone_template(config)
      update_template(config)
      update_dependencies(config)
      test_project(config)
	  end

    private

    def clone_template(config)
      puts "> Clonning template".colorize(:green)
      git = Utils::Git.new.clone_default_template(config)
    end

    def update_template(config)
      puts "> Setting up for \"#{config.name}\"".colorize(:green)
      templater = Utils::Templater.new(config)
      templater.adapt("./#{config.name}")
    end

    def test_project(config)
      puts "> Testing project...".colorize(:green)
      builder = Utils::Builder.new("./#{config.name}", config)
      builder.test
    end

    def update_dependencies(config)
      puts "> Updating Carthage dependencies...".colorize(:green)
      carthage = Utils::Carthage.new("./#{config.name}", config)
      carthage.update
    end

	end

end
