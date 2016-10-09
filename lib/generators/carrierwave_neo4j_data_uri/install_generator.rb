module CarrierwaveNeo4jDataUri  
  module Generators
    class InstallGenerator < Rails::Generators::Base
      desc "This generator creates an initializer file at config/initializers"
      def create_initializer_file
        create_file "config/initializers/carrierwave_neo4j_data_uri.rb", "require 'carrierwave/neo4j-data-uri'"
      end        
    end
  end
end  