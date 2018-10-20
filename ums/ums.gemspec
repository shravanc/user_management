$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "ums/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ums"
  s.version     = Ums::VERSION
  s.authors     = ["shravanc"]
  s.email       = ["shravan007.c@gmail.com"]
  s.homepage    = ""
  s.summary     = ": Summary of Ums."
  s.description = ": Description of Ums."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"

  s.add_development_dependency "sqlite3"
end
