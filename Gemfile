source "https://rubygems.org"

gemspec

tzinfo_gem = ENV['TZINFO_GEM']

if tzinfo_gem == 'v1'
  gem 'tzinfo', '~> 1'
elsif tzinfo_gem == 'v2'
  gem 'tzinfo', '~> 2'
elsif tzinfo_gem == 'head'
  gem 'tzinfo', :git => 'https://github.com/tzinfo/tzinfo.git'
end

group :test do
  gem 'rake'
  gem 'minitest', '~> 5.0'
end
