source "https://rubygems.org"

gemspec

ruby '2.0.0', engine: 'jruby', engine_version: '1.7.15'

gem 'rosette-core', github: 'rosette-proj/rosette-core'

group :development, :test do
  gem 'pry-nav'
  gem 'rake'
  gem 'repo-fixture'
end

group :test do
  gem 'rspec'
  gem 'jbundler'
end
