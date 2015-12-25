module Faat

  # Faat::Resources resources module
  module Resources

    # Faat::Resources::Base default resource class
    class Base

      # attr_accessor
      def method_missing(name, *attr, &block)
        if name == ""
          attribute_model.send :name
        end
      end

      def respond_to?(name)
        true
      end
    end
  end
end