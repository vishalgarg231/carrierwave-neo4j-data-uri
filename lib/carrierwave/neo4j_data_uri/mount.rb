require "carrierwave/neo4j/version"
require "neo4j"
require "carrierwave"
require "carrierwave/validations/active_model"
require "carrierwave/neo4j/uploader_converter"
require "active_support/concern"

module CarrierWave
  module CustomNeo4j
    extend ActiveSupport::Concern

    module ClassMethods
      include CarrierWave::Mount
      ##
      # See +CarrierWave::Mount#mount_uploader+ for documentation
      #
        def mount_uploader(column, uploader=nil, options={}, &block)
          super

          class_eval <<-RUBY, __FILE__, __LINE__+1
            attr_accessor :#{column}_data_filename, :#{column}_data_mimetype

            def #{column}_data_uri=(data)
              self.#{column} = CarrierWave::Neo4j::DataUri::Parser.new(data).to_file original_filename: self.#{column}_data_filename, content_type: self.#{column}_data_mimetype
            end
          RUBY
        end
    end
  end
end
