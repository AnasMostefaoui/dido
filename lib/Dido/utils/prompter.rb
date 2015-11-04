require "colorize"

module Dido

  module Utils

    class Prompter

      def initialize(input)
        @input = input
      end

      def run(config)
        puts ""
        puts "Welcome to Dido".colorize(:green)
        puts "We'll guide you through the creation of your Swift library"
        puts ""

        if ask(1, "Would you like to support iOS?") then config = config.with_ios end
        if ask(2, "Would you like to support OSX?") then config = config.with_osx end
        if ask(3, "Would you like to support watchOS?") then config = config.with_watch_os end
        if ask(4, "Would you like to support OSX?") then config = config.with_tv_os end

        return config
      end

      private

      def ask(index, question)
        puts "#{index}. #{question} " + "(y/n)".colorize(:yellow)
        return read
      end

      def read
        print ">".colorize(:green)
        key = @input.read
        key == "y" ? true : false
      end

    end

    class KeyboardInput

      def read
        STDIN.gets.chomp
      end

    end

  end

end