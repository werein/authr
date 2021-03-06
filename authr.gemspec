$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "authr/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "authr"
  s.version     = Authr::VERSION
  s.authors     = ["Jiri Kolarik"]
  s.email       = ["jiri.kolarik@wereinhq.com"]
  s.homepage    = "https://wereinhq.com"
  s.summary     = "Plug and play mountable engine for user authentication."
  s.description = "Mountable engine with user management and authentication in your API."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "devise"
  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "responders", "~> 2.1"
  s.add_dependency "active_model_serializers", "~> 0.8.2"
  s.add_dependency "simple_token_authentication"

  s.add_development_dependency "minitest-spec-rails"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency "codeclimate-test-reporter"
end
