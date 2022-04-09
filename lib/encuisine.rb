# frozen_string_literal: true

require_relative "encuisine/connection"
require_relative "encuisine/recipe"
require_relative "encuisine/version"

module Encuisine
  if Rails.env.production?
    DEFAULT_DOMAIN = "api.encuisine.org"
    BASE_URL = "https://#{DEFAULT_DOMAIN}"
  else
    DEFAULT_DOMAIN = "localhost:3000"
    BASE_URL = "http://#{DEFAULT_DOMAIN}"
  end

  class Error < StandardError; end
end
