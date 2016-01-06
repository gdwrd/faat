<%= '# default generated template' %>

class <%= "#{class_name}Form" %> < Faat::Forms::Base
  <% attributes.each do |arg| %>
  <%= "attribute :#{arg.name}, #{arg.type.capitalize}" %><% end %>
  <%= '# add your attributes "attribute :title, String"' %>
  <%= '# and add your validation for forms "validates :title, presence: true"' %>
end
