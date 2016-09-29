$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "summon_bot/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "summon_bot"
  s.version     = SummonBot::VERSION
  s.authors     = ["nyaahara"]
  s.email       = ["d.niihara@gmail.com"]
  s.homepage    = "https://github.com/nyaahara/summon_bot"
  s.summary     = "SummonBot can summon slack bot only define your environment."
  s.description = "SummonBot can summon slack bot only define your environment. SummonBot is Wrapped gem Slack::Notifier"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails"
  s.add_dependency "slack-notifier"
  s.add_development_dependency "pry-byebug"
  s.add_development_dependency "rspec", "~> 3.0"
end
