# root module Faat
module Faat
  # Faat::Resources resources module
  module Resources
    # Faat::Resources::Base default resource class
    class Base
      # Your classes must inherited from this Base class
      # for removing all business logic from models classes,
      # and controllers
      # Right now you can use one resources for one model,

      # TODO: implement resources logic for working with coup of models

      def initialize(resource)
        # setup resource name for accessing from other methods
        @resource_name = resource.class.name.underscore

        # setup :attr_accessor for resource attributes
        self.class.send(:attr_accessor, resource.class.name.underscore)
        # setup :class_name for resource class
        self.class.class_eval { @class_name = resource.class.name }
        instance_variable_set("@#{resource.class.name.underscore}", resource)
      end

      # initialize :method_missing for ActiveRecord methods
      # like :save, :valid?, :destroy and others

      def method_missing(name, *attr, &block)
        # getting resource by instance variable :resource_name
        resource.send(name, *attr, &block) || super
      end

      # initialize :respond_to_missing? method for working with
      # ActiveRecord instance methods

      def respond_to_missing?(name, include_private = false)
        # getting resource by instance variable :resource_name,
        # for :respond_to? method
        resource.respond_to?(name) || super
      end

      # add class methods form resource class
      class << self
        # singleton method :method_missing
        def method_missing(name, *attr, &block)
          # initialize :method_missing for accessing for
          # ActiveRecord model class_methods
          class_eval do
            @class_name.constantize.send(name, *attr, &block) || super
          end
        end

        def respond_to_missing?(name, include_private = false)
          # getting respond_to? access to ActiveRecord model class_methods
          class_eval do
            @class_name.constantize.respond_to?(name) || super
          end
        end
      end

      private

        def resource
          instance_variable_get("@#{@resource_name}")
        end
    end
  end
end
