Gem::Specification.new do |s|
  s.name = 'tzinfo-data'
  s.version = '1.2013.5'
  s.summary = 'Timezone Data for TZInfo'
  s.description = 'TZInfo::Data contains data from the IANA Time Zone database packaged as Ruby modules for use with TZInfo.'
  s.author = 'Philip Ross'
  s.email = 'phil.ross@gmail.com'
  s.homepage = 'http://tzinfo.rubyforge.org'
  s.license = 'MIT' 
  s.files = ['LICENSE', 'README', '.yardopts'] +
            Dir['lib/**/*.rb'].delete_if {|f| f.include?('.svn')}
  s.platform = Gem::Platform::RUBY
  s.require_path = 'lib'
  s.add_development_dependency 'tzinfo', '>= 1.0.0'
  s.add_runtime_dependency 'tzinfo', '>= 1.0.0'
  s.extra_rdoc_files = ['README', 'LICENSE']
  s.rdoc_options = %w[--title TZInfo::Data --main README --exclude definitions --exclude indexes]
  s.required_ruby_version = '>= 1.8.6'
end
