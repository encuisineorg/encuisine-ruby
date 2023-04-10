# frozen_string_literal: true

require_relative "encuisine/connection"
require_relative "encuisine/food"
require_relative "encuisine/recipe"
require_relative "encuisine/version"

require "faraday"

module Encuisine
  DEFAULT_DOMAIN = "api.encuisine.org"
  BASE_URL = "https://#{DEFAULT_DOMAIN}"

  class Error < StandardError; end
end
