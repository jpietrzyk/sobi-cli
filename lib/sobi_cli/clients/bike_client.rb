module SobiCli
  module Clients
    class BikeClient
      require "json"
      require 'sobi_cli/helpers'

      include SobiCli::Helpers::BikeHelper

      def initialize(bike_id)
        $redis.set short_id , {bike_id: bike_id, token: token}.to_json
      end
    end
  end
end
