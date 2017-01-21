module SobiCli
  module Helpers
    module BikeHelper
      def token(length = 690)
        require 'securerandom'
        SecureRandom.hex(length.to_i / 2)
      end

      def short_id
        require 'securerandom'

        # there is 5,765,760 possible permutations
        # P(n,r) = n!/(n-r)!
        # SecureRandom.hex(n) generates string of n*2 (0-9 a-f) characters
        # so it should be enough to keep redis keys unique
        SecureRandom.hex(6)
      end
    end
  end
end
