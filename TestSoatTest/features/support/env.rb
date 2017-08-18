
require 'pry-byebug'
require 'rspec'
require 'cucumber'
require 'json'
require 'rest-client'
require 'rspec/expectations'
require 'data_magic'
require 'pry'
require 'byebug'
include RSpec::Matchers

# directory Data YML
DataMagic.yml_directory = 'features/data'

# create the reports folder
Dir.mkdir('reports') unless Dir.exist?('reports')

env = ['qa', 'stg'].include?(ENV['ENV']) ? ENV['ENV'].to_sym : :qa
DEBUG = ENV['DEBUG'] || false

# risk acceptance hosts
ENVIRONMENTS = {
    qa:   'qa-apiws.youse.io',
    stg:  ''
}.freeze

HOST = ENVIRONMENTS.fetch(env)
