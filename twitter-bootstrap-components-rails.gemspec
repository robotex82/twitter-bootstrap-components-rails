$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "twitter/bootstrap/components/rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "twitter-bootstrap-components-rails"
  s.version     = Twitter::Bootstrap::Components::Rails::VERSION
  s.authors     = ["Roberto Vasquez Angel"]
  s.email       = ["roberto@vasquez-angel.de"]
  s.homepage    = "https://github.com/robotex82/twitter-bootstrap-components-rails"
  s.summary     = "Twitter Bootstrap Components for Rails."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.2"
  # s.add_dependency 'bootstrap', '~> 4.0.0.alpha6'
  s.add_dependency 'haml-rails'
  s.add_dependency 'jquery-rails'

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "guard-bundler"
  s.add_development_dependency "guard-rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "rspec-rails"
end
