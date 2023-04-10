# frozen_string_literal: true

module Encuisine
  class Recipe
    class << self
      def all
        response = Connection.json.get("#{BASE_URL}/api/v1/recipes")
      end

      def get(id)
        if id
          response = Connection.json.get("#{BASE_URL}/api/v1/recipes/#{id}")
        end
      end

      def search(query)
        if query
          response = Connection.json.get("#{BASE_URL}/api/v1/recipes") do |request|
            request.params["q"] = query
          end
        end
      end

      def create(json)
        if json
          response = Connection.json.post("#{BASE_URL}/api/v1/recipes") do |request|
            request.body = json
          end
        end
      end
    end
  end
end
