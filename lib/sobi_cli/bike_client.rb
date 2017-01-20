module SobiCli
  class BikeClient
    require "json"
    require 'sobi_cli/bike_helper'

    include BikeHelper

    def initialize(bike_id)
      $redis.set short_id , {bike_id: bike_id, token: token}.to_json
    end
  end
end
