require 'spec_helper'

describe CarrierWave::Neo4j::DataUri::Parser do
  let(:data_uri) do
    'data:image/gif;base64,R0lGODlhAQABAJEAAAAAAP////8AAP///yH5BAEAAAMALAAAAAABAAEAAAICVAEAOw=='
  end

  describe 'initialization' do
    it 'should raise error when data is invalid' do
      expect { CarrierWave::Neo4j::DataUri::Parser.new 'invalid_data' }.to raise_error ArgumentError
    end

    it 'should parse data on init' do
      parsed = CarrierWave::Neo4j::DataUri::Parser.new data_uri

      expect(parsed.extension).to eql 'gif'
    end
  end

  describe '#to_file' do
    it 'should generate temp file based on data' do
      parsed = CarrierWave::Neo4j::DataUri::Parser.new data_uri
      file = parsed.to_file

      expect(file).to be_a_kind_of CarrierWave::Neo4j::DataUri::Parser::Tempfile
    end
  end
end
