require 'generators/faat'
require 'rails/generators/base'

module Faat
  module Generators
    class ServicesGenerator < Base
      argument :service_name, type: :string, default: 'app', banner: 'service_name'

      def create_service
        template "service_template.rb", "app/services/#{file_name}_service.rb"
      end

      private

      def file_name
        service_name.underscore
      end

      def class_name
        service_name.downcase.capitalize
      end
    end
  end
end