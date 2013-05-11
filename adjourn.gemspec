$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "adjourn/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "adjourn"
  s.version     = Adjourn::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Adjourn."
  s.description = "TODO: Description of Adjourn."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"] 

  s.add_dependency "rails", "~> 3.2.13"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"

  s.add_development_dependency 'rspec-rails', '~> 2.12'
  s.add_development_dependency 'shoulda-matchers'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  
end
