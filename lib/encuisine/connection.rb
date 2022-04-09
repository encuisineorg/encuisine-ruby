# frozen_string_literal: true

module Encuisine
  class Connection
    class << self
      def json
        Faraday.new(BASE_URL) do |faraday|
          faraday.request :json
          faraday.response :json
        end
      end
    end
  end
end
