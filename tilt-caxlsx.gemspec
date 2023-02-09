$:.push File.expand_path("../lib", __FILE__)
require "tilt/axlsx/version"

Gem::Specification.new do |gem|
  gem.name = "tilt-caxlsx"
  gem.version = Tilt::Axlsx::VERSION
  gem.authors = "Jordan Owens"
  gem.email = "jkowens@gmail.com"
  gem.summary = "Generate xlsx documents with Tilt"
  gem.description = "Integrates Axlsx with Tilt"
  gem.homepage = "https://github.com/jkowens/tilt-axlsx"
  gem.license = "MIT"

  gem.files = Dir["lib/**/*"] + %w[LICENSE README.md]
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "tilt", ">= 1.4", "< 3.0"
  gem.add_runtime_dependency "caxlsx", ">= 3.0"

  gem.add_development_dependency "minitest", "~> 5.0"
  gem.add_development_dependency "rake"
  gem.add_development_dependency "roo", "~> 2.10.0"
  gem.add_development_dependency "standard", "~> 1.23.0"
end
