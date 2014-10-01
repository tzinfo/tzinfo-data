tzinfo_data_version_file = File.join(File.expand_path(File.dirname(__FILE__)), 'lib', 'tzinfo', 'data', 'version.rb').untaint

tzinfo_data_version = File.open(tzinfo_data_version_file, RUBY_VERSION =~ /\A1\.[0-8]\./ ? 'r' : 'r:utf-8') do |file|
  file.readlines.grep(/\s*VERSION\s*=\s*['"](\d+(\.\d+){2})['"]/) { $1 }.first
end

Gem::Specification.new do |s|
  s.name = 'tzinfo-data'
  s.version = tzinfo_data_version
  s.summary = 'Timezone Data for TZInfo'
  s.description = 'TZInfo::Data contains data from the IANA Time Zone database packaged as Ruby modules for use with TZInfo.'
  s.author = 'Philip Ross'
  s.email = 'phil.ross@gmail.com'
  s.homepage = 'http://tzinfo.github.io'
  s.license = 'MIT' 
  s.files = ['LICENSE', 'README.md', '.yardopts'] +
            Dir['lib/**/*.rb'].delete_if {|f| f.include?('.svn')}
  s.platform = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.add_runtime_dependency 'tzinfo', '>= 1.0.0'
  s.extra_rdoc_files = ['README.md', 'LICENSE']
  s.rdoc_options = %w[--title TZInfo::Data --main README.md --exclude definitions --exclude indexes]
  s.required_ruby_version = '>= 1.8.7'
end
