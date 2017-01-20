#!/usr/bin/env ruby

require 'pry'
require 'redis'
require 'redis-namespace'

$redis = Redis::Namespace.new('sobi-development', redis: Redis.new)

# $LOAD_PATH << File.join(File.dirname(File.realpath(__FILE__)), 'lib/sobi_cli')
# $ROOT = File.dirname(File.realpath(__FILE__))

binding.pry

require 'helpers'
require 'clients'

include Bike

binding.pry

Clients::Bike.new(1)
