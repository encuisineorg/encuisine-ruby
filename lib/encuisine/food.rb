# frozen_string_literal: true

module Encuisine
  class Food
    class << self
      def all
        response = Connection.json.get("#{BASE_URL}/api/v1/foods")
      end

      def get(id)
        if id
          response = Connection.json.get("#{BASE_URL}/api/v1/foods/#{id}")
        end
      end

      def search(query)
        if query
          response = Connection.json.get("#{BASE_URL}/api/v1/foods") do |request|
            request.params["q"] = query
          end
        end
      end
    end
  end
end
