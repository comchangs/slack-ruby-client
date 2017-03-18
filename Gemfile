source 'http://rubygems.org'

gemspec

gem ENV['CONCURRENCY'], require: false if ENV.key?('CONCURRENCY')
gem 'picky' unless RUBY_PLATFORM == 'java'
gem 'activesupport', '~> 4.0'
gem 'json', '~> 2.0.3'

group :test do
  gem 'slack-ruby-danger', '~> 0.1.0', require: false
end
