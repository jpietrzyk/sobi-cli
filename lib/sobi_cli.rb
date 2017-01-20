module SobiCli
  require 'rubygems/package'
  # require 'pry'
  require 'redis'
  require 'redis-namespace'

  require 'sobi_cli/bike_client'
  require 'sobi_cli/version'

  # $LOAD_PATH << File.join(File.dirname(File.realpath(__FILE__)), 'lib/sobi_cli')
  # $ROOT = File.dirname(File.realpath(__FILE__))

  $redis = Redis::Namespace.new('sobi-development', redis: Redis.new)
end
