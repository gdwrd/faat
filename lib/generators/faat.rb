require 'rails/generators/base'

module Faat
  module Generators
    class Base < Rails::Generators::Base
      def self.source_root
        @_faat_source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'faat', generator_name, 'templates'))
      end

      def self.banner
        "rails generate faat:#{generator_name} #{self.arguments.map{ |a| a.usage }.join(' ')} [options]"
      end

      private

      def add_gem(name, options = {})
        gemfile_content = File.read(destination_path("Gemfile"))
        File.open(destination_path("Gemfile"), 'a') { |f| f.write("\n") } unless gemfile_content =~ /\n\Z/
        gem name, options unless gemfile_content.include? name
      end

      def print_usage
        self.class.help(Thor::Base.shell.new)
        exit
      end
    end
  end
end