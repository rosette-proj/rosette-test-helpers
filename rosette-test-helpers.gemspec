$:.unshift File.join(File.dirname(__FILE__), 'lib')
require 'rosette/test-helpers/version'

Gem::Specification.new do |s|
  s.name     = "rosette-test-helpers"
  s.version  = ::Rosette::TestHelpers::VERSION
  s.authors  = ["Cameron Dutro"]
  s.email    = ["camertron@gmail.com"]
  s.homepage = "http://github.com/camertron"

  s.description = s.summary = "Various test helpers and fixtures for the Rosette internationalization platform."

  s.platform = Gem::Platform::RUBY
  s.has_rdoc = true

  s.add_dependency 'repo-fixture', '~> 1.0.0'

  s.require_path = 'lib'
  s.files = Dir["{lib,spec}/**/*", "Gemfile", "History.txt", "README.md", "Rakefile", "rosette-test-helpers.gemspec"]
end
