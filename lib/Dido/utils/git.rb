module Dido
  module Utils
    
    class Git

      def clone_default_template(config)
        clone("https://github.com/gitdoapp/dido-template.git", config.name)
      end

      private

      def clone(url, name)
        puts `git clone #{url} #{name}`
      end

    end

  end
end
