require "Dido/entities/config"
require 'find'

module Dido
  module Utils

    class Templater

      def initialize(config)
        @config = config
      end

      def adapt(path)
        rename_directories(path)
        rename_files(path)
      end

      private

      def rename_directories(path)
        rename = lambda { |path|
           get_files(path).select{ |p| p.include?("{{NAME}}")}.first
        }
        to_rename = rename.call(path)
        return unless to_rename
        new_name = to_rename.gsub("{{NAME}}", @config.name)
        File.rename(to_rename, new_name)
        adapt(path)
      end

      def rename_files(path)
        get_files(path).each do |file_path|
          next if File.directory?(file_path)
          next if file_path.include? ".git"
          text = File.read(file_path)
          new_contents = text.gsub("{{NAME}}", @config.name)
          new_contents = new_contents.gsub("ORGID", @config.org_id)
          new_contents = new_contents.gsub("ORGNAME", @config.org_name)
          File.open(file_path, "w") {|file| file.puts new_contents }
        end
      end

      def get_files(path)
        Find.find(path)
      end

    end

  end
end
