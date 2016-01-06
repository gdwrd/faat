require 'generators/faat'
require 'rails/generators/base'

module Faat
  module Generators
    class FormsGenerator < Base
      argument :form_name, type: :string, default: 'app', banner: 'form_name'
      argument :attr, type: :array, default: [], banner: 'form attributes'

      def create_form
        @form_attributes = []

        unless attr.size.zero?
          attr.each do |arg|
            if arg.include?(':')
              @form_attributes << Rails::Generators::GeneratedAttribute.new(*arg.split(':'))
            else
              @form_attributes << Rails::Generators::GeneratedAttribute.new(arg)
            end
          end
        end

        template "form_template.rb", "app/forms/#{file_name}_form.rb"
      end

      private

      def attributes
        @form_attributes
      end

      def file_name
        form_name.underscore
      end

      def class_name
        form_name.downcase.capitalize
      end
    end
  end
end