require 'virtus'
# root module Faat
module Faat
  # Faat::Forms forms module
  module Forms
    # Faat::Forms::Base base forms class
    class Base
      # Your classes must inherited from this Base class
      # for removing all business logic from models classes,
      # and controllers

      include Virtus.model

      extend ActiveModel::Naming
      include ActiveModel::Conversion
      include ActiveModel::Validations
    end
  end
end