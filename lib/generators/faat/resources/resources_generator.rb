require 'generators/faat'
require 'rails/generators/base'

module Faat
  module Generators
    class ResourcesGenerator < Base
      argument :resource_name, type: :string, default: 'app', banner: 'resource_name'

      def create_resources
        template "resource_template.rb", "app/resources/#{file_name}_resources.rb"
      end

      private

      def file_name
        resource_name.underscore
      end

      def constant_name
        resource_name.underscore.upcase
      end

      def class_name
        resource_name.downcase.capitalize
      end
    end
  end
end