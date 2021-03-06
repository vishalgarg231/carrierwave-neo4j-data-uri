require 'carrierwave'
require 'neo4j'
require "carrierwave/neo4j"
require 'carrierwave/neo4j_data_uri/tempfile'
require 'carrierwave/neo4j_data_uri/parser'
require 'carrierwave/neo4j_data_uri/mount'

Neo4j::ActiveNode.send :include, CarrierWave::CustomNeo4j  if defined?(Neo4j::ActiveNode)
