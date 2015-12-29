namespace 'faat'

# creating resources_generator
class ResourcesGenerator < Rails::Generators::Base
  def create_resources_file
    create_file "app/resources/#{file_name}_resource.rb", <<-FILE
      class #{class_name}Resources < Faat::Resources::Base
        attr_reader #{plural_name}, :#{plural_name.singularize}
      end
    FILE
  end
end
