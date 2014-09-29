$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "oversight/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "oversight"
  s.version     = Oversight::VERSION
  s.authors     = ["Sindre Moen"]
  s.email       = ["sindre@hyper.no"]
  s.homepage    = "https://github.com/hyperoslo/oversight"
  s.summary     = "Keeping tabs on your organization's employees"
  s.description = "Keeping tabs on your organization's employees"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "spec/factories/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.0"

  s.add_development_dependency "sqlite3", '~> 1.3'
  s.add_development_dependency "pry-rails", '~> 0.3'
  s.add_development_dependency "hirb-unicode", '~> 0.0'
  s.add_development_dependency "rspec-rails", '~> 2.14'
  s.add_development_dependency "factory_girl_rails", '~> 4.4'
end
