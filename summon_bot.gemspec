$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "summon_bot/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "summon_bot"
  s.version     = SummonBot::VERSION
  s.authors     = ["nyaahara"]
  s.email       = ["d.niihara@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of SummonBot."
  s.description = "TODO: Description of SummonBot."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.0.0", ">= 5.0.0.1"

  s.add_development_dependency "sqlite3"
end
