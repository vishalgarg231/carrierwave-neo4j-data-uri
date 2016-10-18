#require 'codeclimate-test-reporter'
#CodeClimate::TestReporter.start

$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'rspec'
require "carrierwave"
require "carrierwave/neo4j"
require 'data_uri'
require "carrierwave/neo4j-data-uri"


RSpec.configure do |config|

  def capture(stream)
    begin
      stream = stream.to_s
      eval "$#{stream} = StringIO.new"
      yield
      result = eval("$#{stream}").string
    ensure
      eval("$#{stream} = #{stream.upcase}")
    end

    result
  end

  alias silence capture
end
