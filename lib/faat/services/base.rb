# root module Faat
module Faat
  # Faat::Services service module
  module Services
    # base class for Faat::Services

    class Base < Faat::FaatObject
      def initialize(resource)
        super(resource)
      end
    end
  end
end