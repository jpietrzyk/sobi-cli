module SobiCli
  require 'rubygems/package'
  require 'redis'
  require 'redis-namespace'

  require 'sobi_cli/clients'
  require 'sobi_cli/version'

  require 'dotenv'
  Dotenv.load

  require 'sobi_cli/initializers/redis'
end
