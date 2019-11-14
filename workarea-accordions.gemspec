$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'workarea/accordions/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'workarea-accordions'
  s.version     = Workarea::Accordions::VERSION
  s.authors     = ['bberg']
  s.email       = ['bberg@weblinc.com']
  s.homepage    = 'https://github.com/workarea-commerce/workarea-accordions'
  s.summary     = 'Accordions plugin for Workarea Commerce platform'
  s.description = 'Adds a JS module that inits jQuery UI accordions where specified'
  s.files = `git ls-files`.split("\n")
  # s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir['test/**/*']

  s.required_ruby_version = '>= 2.0.0'

  s.add_dependency 'workarea', '~> 3.x'
end
