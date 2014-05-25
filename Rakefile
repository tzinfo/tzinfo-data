require 'rubygems'
require 'rubygems/package_task'
require 'rake/testtask'

# Ignore errors loading rdoc/task (the rdoc tasks will be excluded if
# rdoc is unavailable).
begin
  require 'rdoc/task'
rescue LoadError, RuntimeError
end

BASE_DIR = File.dirname(__FILE__)
LIB_DIR = File.join(BASE_DIR, 'lib')
BUILD_TZ_MODULES_DIR = File.join(BASE_DIR, '.build_tz_modules')
DATA_DIR = File.join(BASE_DIR, 'data')
DATA_OUTPUT_DIR = File.join(BASE_DIR, 'lib', 'tzinfo', 'data')

task :default => [:test]

spec = eval(File.read('tzinfo-data.gemspec'))

class TZInfoPackageTask < Gem::PackageTask
  alias_method :orig_sh, :sh
  private :orig_sh

  def sh(*cmd, &block)
    if cmd.first =~ /\A__tar_with_owner__ -?([zjcvf]+)(.*)\z/
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

Rake::TestTask.new(:test) do |t|
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

desc 'Read the TZ database files in the data directory and produce TZInfo::Data Ruby modules' 
task :build_tz_modules do
  require File.join(LIB_DIR, 'tzinfo', 'data', 'tzdataparser')
  
  FileUtils.mkdir_p(BUILD_TZ_MODULES_DIR)
  begin  
    p = TZInfo::Data::TZDataParser.new(DATA_DIR, BUILD_TZ_MODULES_DIR)
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
task :build_tz_module do
  require File.join(LIB_DIR, 'tzinfo', 'data', 'tzdataparser')
  p = TZInfo::Data::TZDataParser.new(DATA_DIR, DATA_OUTPUT_DIR)
  p.generate_countries = false
  p.only_zones = [ENV['zone']]
  p.execute
end

desc 'Rebuild the countries index'
task :build_countries do
  require File.join(LIB_DIR, 'tzinfo', 'data', 'tzdataparser')
  p = TZInfo::Data::TZDataParser.new(DATA_DIR, DATA_OUTPUT_DIR)
  p.generate_countries = true
  p.generate_zones = false
  p.execute
end
