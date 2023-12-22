require 'rubygems'
require 'rubygems/package_task'
require 'rake/testtask'
require 'open-uri'
require 'zlib'

# Ignore errors loading rdoc/task (the rdoc tasks will be excluded if
# rdoc is unavailable).
begin
  require 'rdoc/task'
rescue LoadError, RuntimeError
end

BASE_DIR = File.dirname(__FILE__)
LIB_DIR = File.join(BASE_DIR, 'lib')
BUILD_TZ_MODULES_DIR = File.join(BASE_DIR, '.build_tz_modules')
DATA_OUTPUT_DIR = File.join(BASE_DIR, 'lib', 'tzinfo', 'data')

GEMSPEC_PATH = File.join(BASE_DIR, 'tzinfo-data.gemspec')

TZDB_DIR = 'tzdb'
TZDB_GPG_KEYRING = 'gpg.keyring'
TZDB_GPG_KEYRING_PATH = File.join(TZDB_DIR, TZDB_GPG_KEYRING)

require_relative File.join('lib', 'tzinfo', 'data', 'version')

class << self
  def tzdb_version
    TZInfo::Data::Version::TZDATA
  end

  def tzdb_name(type, options = {})
    temp = options[:temp]
    prefix = options[:prefix]
    suffix = options[:suffix]
    version = options[:version] ? tzdb_version : ''
    "#{temp ? '.' : ''}#{prefix}#{type}#{version}#{suffix}#{temp ? '.tmp' : ''}"
  end

  def tzdb_dir_name(type, options = {})
    tzdb_name(type, options)
  end

  def tzdb_tgz_name(type, options = {})
    tzdb_name(type, options.merge(:prefix => 'tz', :suffix => '.tar.gz', :version => true))
  end

  def tzdb_asc_name(type, options = {})
    tzdb_name(type, options.merge(:prefix => 'tz', :suffix => '.tar.gz.asc', :version => true))
  end

  def tzdb_ext_name(ext, type, options = {})
    send("tzdb_#{ext}_name", type, options)
  end

  [:bin, :combined, :zoneinfo].each do |t|
    name = t.to_s

    define_method("tzdb_#{name}_name") do |*args|
      tzdb_name(name, args.first || {})
    end

    define_method("tzdb_#{name}_path") do |*args|
      tzdb_path(send("tzdb_#{name}_name", args.first || {}))
    end
  end

  def tzdb_combined_name(options = {})
    tzdb_name('combined', options)
  end

  def tzdb_bin_name(options = {})
    tzdb_name('bin', options)
  end

  def tzdb_path(name = nil)
    components = [TZDB_DIR, tzdb_version]
    components << name if name
    File.join(*components)
  end

  [:dir, :tgz, :asc].each do |t|
    define_method("tzdb_#{t}_path") do |type, *args|
      tzdb_path(send("tzdb_#{t}_name", type, args.first || {}))
    end
  end

  def tzdb_data_dir_path
    tzdb_dir_path('data')
  end

  def tzdb_ext_path(ext, type, options = {})
    send("tzdb_#{ext}_path", type, options)
  end

  def tzdb_exe_path(exe)
    File.join(tzdb_bin_path, exe.to_s)
  end
end

task :default => [:test]

spec = TOPLEVEL_BINDING.eval(File.read(GEMSPEC_PATH), GEMSPEC_PATH)

class TZInfoPackageTask < Gem::PackageTask
  alias_method :orig_sh, :sh
  private :orig_sh

  def sh(*cmd, &block)
    if cmd[0] == '__tar_with_owner__' && cmd[1] =~ /\A-?[zjcvf]+\z/
      opts = cmd[1]
      cmd = ['tar', 'c', '--owner', '0', '--group', '0', "#{opts.start_with?('-') ? '' : '-'}#{opts.gsub('c', '')}"] + cmd.drop(2)
    elsif cmd.first =~ /\A__tar_with_owner__ -?([zjcvf]+)(.*)\z/
      opts = $1
      args = $2
      cmd[0] = "tar c --owner 0 --group 0 -#{opts.gsub('c', '')}#{args}"
    end

    orig_sh(*cmd, &block)
  end
end

def add_signing_key(spec)
  # Attempt to find the private key and add options to sign the gem if found.
  private_key_path = File.expand_path(File.join(BASE_DIR, '..', 'key', 'gem-private_key.pem'))

  if File.exist?(private_key_path)
    spec = spec.clone
    spec.signing_key = private_key_path
    spec.cert_chain = [File.join(BASE_DIR, 'gem-public_cert.pem')]
  else
    puts 'WARNING: Private key not found. Not signing gem file.'
  end

  spec
end

package_task = TZInfoPackageTask.new(add_signing_key(spec)) do |pkg|
  pkg.need_zip = true
  pkg.need_tar_gz = true
  pkg.tar_command = '__tar_with_owner__'
end

# Skip the rdoc task if RDoc::Task is unavailable
if defined?(RDoc) && defined?(RDoc::Task)
  RDoc::Task.new do |rdoc|
    rdoc.rdoc_dir = 'doc'
    rdoc.options.concat spec.rdoc_options
    rdoc.rdoc_files.include(spec.extra_rdoc_files)
    rdoc.rdoc_files.include('lib')
  end
end

Rake::Task[package_task.package_dir_path].enhance do
  recurse_chmod(package_task.package_dir_path)
end

Rake::Task[:package].enhance do
  FileUtils.rm_rf(package_task.package_dir_path)
end

def recurse_chmod(dir)
  File.chmod(0755, dir)

  Dir.entries(dir).each do |entry|
    if entry != '.' && entry != '..'
      path = File.join(dir, entry)
      if File.directory?(path)
        recurse_chmod(path)
      else
        File.chmod(0644, path)
      end
    end
  end
end

namespace :env do
  [[:tzdata, :data], [:zoneinfo, :zoneinfo]].each do |env, dir|
    env_name = env.to_s.upcase
    path = ENV[env_name]
    if path
      task env do
        puts "The #{env_name} environment variable is set. Using #{env} files from: #{File.absolute_path(path)}"
      end
    else
      task env => tzdb_dir_path(dir) do
        ENV[env_name] = tzdb_dir_path(dir)
      end
    end
  end

  if ENV['ZDUMP']
    task :zdump do
      path = ENV['ZDUMP']
      puts "The ZDUMP environment variable is set. Using zdump from: #{File.absolute_path(path)}"
      version = `#{path} --version`
      unless version =~ Regexp.new("\\b#{Regexp.escape(tzdb_version)}\\b")
        puts "Warning: The version of zdump specified by ZDUMP does not match the tzdata version (#{tzdb_version})."
        puts "The reported zdump version is: #{version}"
      end
    end
  else
    task :zdump => tzdb_exe_path(:zdump) do
      ENV['ZDUMP'] = tzdb_exe_path(:zdump)
    end
  end
end

Rake::TestTask.new(:test => ['env:tzdata', 'env:zdump', 'env:zoneinfo']) do |t|
  require 'tzinfo'

  t.libs = ['lib']

  $:.each do |dir|
    if File.exist?(File.join(dir, 'tzinfo.rb'))
      t.libs << File.expand_path(dir)
    end
  end

  t.pattern = File.join(File.expand_path(File.dirname(__FILE__)), 'test', 'ts_all.rb')
  t.warning = true
end
test_task = Rake::Task[:test]
test_task.clear_comments
test_task.add_description('Run tests')

desc 'Produce TZInfo::Data Ruby modules from the IANA Time Zone Database'
task :build_tz_modules => 'env:tzdata' do
  require File.join(LIB_DIR, 'tzinfo', 'data', 'tzdataparser')

  FileUtils.mkdir_p(BUILD_TZ_MODULES_DIR)
  begin
    p = TZInfo::Data::TZDataParser.new(ENV['TZDATA'], BUILD_TZ_MODULES_DIR)
    p.execute

    scm = Scm.create(BASE_DIR)

    ['indexes', 'definitions'].each do |dir|
      scm.sync(File.join(BUILD_TZ_MODULES_DIR, dir), File.join(DATA_OUTPUT_DIR, dir))
    end
  ensure
    FileUtils.rm_rf(BUILD_TZ_MODULES_DIR)
  end
end

class Scm
  def self.create(dir)
    if File.directory?(File.join(dir, '.git'))
      GitScm.new(dir)
    elsif File.directory?(File.join(dir, '.svn'))
      SvnScm.new(dir)
    else
      NullScm.new(dir)
    end
  end

  def initialize(dir)
  end

  def sync(source_dir, target_dir)
    puts "Sync from #{source_dir} to #{target_dir}#{command ? " using #{command}" : ''}"
    sync_dirs(source_dir, target_dir)
  end

  protected

  def exec_scm(params)
    puts "#{command} #{params}"
    `#{command} #{params}`
    raise "#{command} exited with status #$?" if $? != 0
  end

  private

  def sync_dirs(source_dir, target_dir)
    # Assumes a directory will never turn into a file and vice-versa
    # (files will all end in .rb, directories won't).

    source_entries, target_entries = [source_dir, target_dir].collect do |dir|
      Dir.entries(dir).delete_if {|entry| entry =~ /\A\./}.sort
    end

    until source_entries.empty? || target_entries.empty?
      last_source = source_entries.last
      last_target = target_entries.last

      if last_source == last_target
        source_file = File.join(source_dir, last_source)
        target_file = File.join(target_dir, last_target)

        if File.directory?(source_file)
          sync_dirs(source_file, target_file)
        else
          FileUtils.cp(source_file, target_file)
        end

        source_entries.pop
        target_entries.pop
      elsif source_entries.last < target_entries.last
        sync_only_in_target(target_dir, target_entries)
      else
        sync_only_in_source(source_dir, target_dir, source_entries)
      end
    end

    until target_entries.empty?
      sync_only_in_target(target_dir, target_entries)
    end

    until source_entries.empty?
      sync_only_in_source(source_dir, target_dir, source_entries)
    end
  end

  def sync_only_in_target(target_dir, target_entries)
    target_file = File.join(target_dir, target_entries.last)
    delete(target_file)
    target_entries.pop
  end

  def sync_only_in_source(source_dir, target_dir, source_entries)
    source_file = File.join(source_dir, source_entries.last)
    target_file = File.join(target_dir, source_entries.last)

    if File.directory?(source_file)
      Dir.mkdir(target_file)
      add(target_file)
      sync_dirs(source_file, target_file)
    else
      FileUtils.cp(source_file, target_file)
      add(target_file)
    end

    source_entries.pop
  end
end

class NullScm < Scm
  def command
    nil
  end

  def add(file)
  end

  def delete(file)
    puts "rm -rf \"#{file}\""
    FileUtils.rm_rf(file)
  end
end

class GitScm < Scm
  def command
    'git'
  end

  def add(file)
    unless File.directory?(file)
      exec_scm "add \"#{file}\""
    end
  end

  def delete(file)
    exec_scm "rm -rf \"#{file}\""
  end
end

class SvnScm < Scm
  def command
    'svn'
  end

  def add(file)
    exec_scm "add \"#{file}\""
  end

  def delete(file)
    exec_scm "delete --force \"#{file}\""
  end
end

desc "Rebuild the Ruby module for a single zone specified by the 'zone' environment variable"
task :build_tz_module => 'env:tzdata' do
  require File.join(LIB_DIR, 'tzinfo', 'data', 'tzdataparser')
  p = TZInfo::Data::TZDataParser.new(ENV['TZDATA'], DATA_OUTPUT_DIR)
  p.generate_countries = false
  p.only_zones = [ENV['zone']]
  p.execute
end

desc 'Rebuild the countries index'
task :build_countries => 'env:tzdata' do
  require File.join(LIB_DIR, 'tzinfo', 'data', 'tzdataparser')
  p = TZInfo::Data::TZDataParser.new(ENV['TZDATA'], DATA_OUTPUT_DIR)
  p.generate_countries = true
  p.generate_zones = false
  p.execute
end



directory TZDB_DIR

file TZDB_GPG_KEYRING_PATH => ['tzdb-gpg-keys.asc', TZDB_DIR] do
  rm_f(TZDB_GPG_KEYRING_PATH)
  sh("gpg --no-default-keyring --keyring '#{TZDB_GPG_KEYRING_PATH}' --import tzdb-gpg-keys.asc")
end

directory tzdb_path => TZDB_DIR

[:code, :data].each do |type|
  [:tgz, :asc].each do |ext|
    path = tzdb_ext_path(ext, type)
    file_create path => tzdb_path do
      temp_path = tzdb_ext_path(ext, type, :temp => true)
      url = "https://data.iana.org/time-zones/releases/#{tzdb_ext_name(ext, type)}"
      attempt = 1
      begin
        puts "Downloading #{url}"
        URI.parse(url).open do |http|
          File.open(temp_path, 'wb') do |temp_file|
            copy_stream(http, temp_file)
          end
        end
      rescue Exception => e
        if attempt < 3
          puts "Download failed: #{e}"
          puts "Retrying"
          attempt += 1
          retry
        end
        raise
      end
      mv(temp_path, path)
    end
  end

  tgz_path = tzdb_tgz_path(type)
  asc_path = tzdb_asc_path(type)
  dir_path = tzdb_dir_path(type)

  file_create dir_path => [tzdb_path, tgz_path, asc_path, TZDB_GPG_KEYRING_PATH] do
    sh("gpg --no-default-keyring --keyring '#{TZDB_GPG_KEYRING_PATH}' --verify '#{asc_path}'")
    tmp_path = tzdb_dir_path(type, :temp => true)
    rm_rf(tmp_path)
    mkdir_p(tmp_path)
    sh("tar xzf '#{tgz_path}' -C '#{tmp_path}'")
    mv(tmp_path, dir_path)
  end

  namespace :tzdb do
    namespace :download do
      desc "Downloads the tz#{type} release (version #{tzdb_version})"
      task type => [tgz_path, asc_path]
    end
    namespace :extract do
      desc "Extracts the tz#{type} release (version #{tzdb_version})"
      task type => dir_path
    end
  end
end

file_create tzdb_combined_path => [tzdb_path, tzdb_dir_path('code'), tzdb_dir_path('data')] do
  tmp_path = tzdb_combined_path(:temp => true)
  rm_rf(tmp_path)
  mkdir_p(tmp_path)
  %w(code data).each do |type|
    src_dir = tzdb_dir_path(type)
    Dir.entries(src_dir).each do |entry|
      if entry != '.' && entry != '..'
        dest_path = File.join(tmp_path, entry)
        ln(File.join(src_dir, entry), dest_path) unless File.exist?(dest_path)
      end
    end
  end

  mv(tmp_path, tzdb_combined_path)
end

directory tzdb_bin_path => tzdb_path

[:zdump, :zic].each do |exe|
  file_create tzdb_exe_path(exe) => [tzdb_combined_path, tzdb_bin_path] do
    sh("make -C '#{tzdb_combined_path}' #{exe}")
    ln(File.join(tzdb_combined_path, exe.to_s), tzdb_exe_path(exe))
  end
end

file_create tzdb_zoneinfo_path => [tzdb_path, tzdb_data_dir_path, tzdb_exe_path(:zic)] do
  tmp_path = tzdb_zoneinfo_path(:temp => true)
  rm_rf(tmp_path)
  mkdir_p(tmp_path)

  data_path = tzdb_data_dir_path
  files = Dir.entries(data_path).select do |name|
    name =~ /\A[^\.]+\z/ &&
      !%w(backzone calendars leapseconds CONTRIBUTING LICENSE Makefile NEWS README SECURITY SOURCE Theory version).include?(name) &&
      File.file?(File.join(data_path, name))
  end

  sh("#{tzdb_exe_path(:zic)} -d \"#{tmp_path}\" #{files.map {|f| "\"#{File.join(data_path, f)}\""}.join(' ')}")
  mv(tmp_path, tzdb_zoneinfo_path)
end

namespace :tzdb do
  [:download, :extract].each do |task_name|
    desc "#{task_name.to_s.capitalize}s the tzcode and tzdata releases (version #{tzdb_version})"
    task task_name => [:code, :data].map {|t| "tzdb:#{task_name}:#{t}"}
  end

  desc "Builds the zdump and zic executables (version #{tzdb_version})"
  task :bin => [:zdump, :zic].map {|e| "tzdb:bin:#{e}" }

  namespace :bin do
    [:zdump, :zic].each do |exe|
      desc "Builds the #{exe} executable (version #{tzdb_version})"
      task exe => tzdb_exe_path(exe)
    end
  end

  desc "Builds zoneinfo files (version #{tzdb_version})"
  task :zoneinfo => tzdb_zoneinfo_path

  desc "Removes all Time Zone Database files"
  task :clean do
    rm_rf(TZDB_DIR)
  end

  namespace :clean do
    desc "Removes all Time Zone Database files for the current version (#{tzdb_version})"
    task :current do
      rm_rf(tzdb_path)
    end

    desc "Removes all Time Zone Database files for versions other than the current version (#{tzdb_version})"
    task :other do
      version = tzdb_version
      Dir.entries(TZDB_DIR).each do |entry|
        if version != entry && entry =~ /\A\d{4,}[a-z]+\z/
          path = File.join(TZDB_DIR, entry)
          rm_rf(path) if File.directory?(path)
        end
      end
    end
  end
end
