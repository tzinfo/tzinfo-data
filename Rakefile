require 'rake/testtask'
require 'rdoc/task'
require 'rubygems'
require 'rubygems/package_task'

LIB_DIR = File.join(File.dirname(__FILE__), 'lib')
BUILD_TZ_MODULES_DIR = File.join(File.dirname(__FILE__), '.build_tz_modules')
DATA_DIR = File.join(File.dirname(__FILE__), 'data')
DATA_OUTPUT_DIR = File.join(File.dirname(__FILE__), 'lib', 'tzinfo', 'data')

spec = eval(File.read('tzinfo-data.gemspec'))

self.class.class_eval { alias_method :orig_sh, :sh }
private :orig_sh

def sh(*cmd, &block)
  if cmd.first =~ /\A__tar_with_owner__ -?([zjcvf]+)(.*)\z/
    opts = $1
    args = $2
    cmd[0] = "tar c --owner 0 --group 0 -#{opts.gsub('c', '')}#{args}"    
  end
  
  orig_sh(*cmd, &block)
end

package_task = Gem::PackageTask.new(spec) do |pkg|
  pkg.need_zip = true
  pkg.need_tar_gz = true
  pkg.tar_command = '__tar_with_owner__'
end

RDoc::Task.new do |rdoc|
  rdoc.rdoc_dir = 'doc'
  rdoc.title = "TZInfo Data"
  rdoc.options.concat spec.rdoc_options
  rdoc.rdoc_files.include(spec.extra_rdoc_files) 
  rdoc.rdoc_files.include('lib')  
end

Rake::Task[package_task.package_dir_path].enhance do
  File.chmod(0755, package_task.package_dir_path)
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

Rake::TestTask.new('test') do |t|
  require 'tzinfo'
  
  t.libs = ['lib']
  
  $:.each do |dir|
    if File.exists?(File.join(dir, 'tzinfo.rb'))
      t.libs << File.expand_path(dir)
    end
  end

  t.pattern = File.join(File.expand_path(File.dirname(__FILE__)), 'test', 'ts_all.rb')
end

task :build_tz_modules do
  require File.join(LIB_DIR, 'tzinfo', 'data', 'tzdataparser')
  
  FileUtils.mkdir_p(BUILD_TZ_MODULES_DIR)
  begin  
    p = TZInfo::Data::TZDataParser.new(DATA_DIR, BUILD_TZ_MODULES_DIR)
    p.execute
    
    ['indexes', 'definitions'].each {|dir|
      sync_svn(File.join(BUILD_TZ_MODULES_DIR, dir), File.join(DATA_OUTPUT_DIR, dir))
    }
  ensure
    FileUtils.rm_rf(BUILD_TZ_MODULES_DIR)
  end
end

def sync_svn(source_dir, target_dir)
  puts "SVN Sync from #{source_dir} to #{target_dir}"

  # Assumes a directory will never turn into a file and vice-versa
  # (files will all end in .rb, directories won't).
  # SVN wouldn't allow the change in a single commit anyway.

  source_entries, target_entries = [source_dir, target_dir].collect {|dir|
    Dir.entries(dir).delete_if {|entry| entry =~ /^\.(\.?|svn)$/}.sort
  }
  
  until source_entries.empty? || target_entries.empty?          
    if source_entries.last == target_entries.last      
      source_file = File.join(source_dir, source_entries.last)
      target_file = File.join(target_dir, target_entries.last)
    
      if File.directory?(source_file)
        sync_svn(source_file, target_file)
      else
        FileUtils.cp(source_file, target_file)
      end     
    
      source_entries.pop
      target_entries.pop
    elsif source_entries.last < target_entries.last
      sync_svn_only_in_target(target_dir, target_entries)
    else      
      sync_svn_only_in_source(source_dir, target_dir, source_entries)
    end    
  end
  
  until target_entries.empty?
    sync_svn_only_in_target(target_dir, target_entries)
  end
  
  until source_entries.empty?
    sync_svn_only_in_source(source_dir, target_dir, source_entries)
  end
end

def sync_svn_only_in_target(target_dir, target_entries)
  target_file = File.join(target_dir, target_entries.last)
  exec_svn "delete \"#{target_file}\""
  target_entries.pop
end

def sync_svn_only_in_source(source_dir, target_dir, source_entries)
  source_file = File.join(source_dir, source_entries.last)
  target_file = File.join(target_dir, source_entries.last)
      
  if File.directory?(source_file)
    Dir.mkdir(target_file)
    exec_svn "add \"#{target_file}\""
    sync_svn(source_file, target_file)
  else
    FileUtils.cp(source_file, target_file)
    exec_svn "add \"#{target_file}\""
  end
  
  source_entries.pop
end

def exec_svn(params)
  puts "svn #{params}"
  `svn #{params}`
  raise "SVN exited with status #$?" if $? != 0  
end

task :build_tz_module do
  require File.join(LIB_DIR, 'tzinfo', 'data', 'tzdataparser')
  p = TZInfo::Data::TZDataParser.new(DATA_DIR, DATA_OUTPUT_DIR)
  p.generate_countries = false
  p.only_zones = [ENV['zone']]
  p.execute
end

task :build_countries do
  require File.join(LIB_DIR, 'tzinfo', 'data', 'tzdataparser')
  p = TZInfo::Data::TZDataParser.new(DATA_DIR, DATA_OUTPUT_DIR)
  p.generate_countries = true
  p.generate_zones = false
  p.execute
end
