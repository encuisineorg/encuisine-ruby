# frozen_string_literal: true

require_relative "lib/encuisine/version"

Gem::Specification.new do |spec|
  spec.name = "encuisine"
  spec.version = Encuisine::VERSION
  spec.authors = ["Cyril Blaecke"]
  spec.email = ["cyril@dilolabs.fr"]

  spec.summary = "En Cuisine API wrapper"
  spec.description = "En Cuisine ! API wrapper, the open database about recipes."
  spec.homepage = "https://github.com/encuisineorg/encuisine-ruby"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", "~> 2.2"
end
