require 'rake/extensiontask'
require 'rake/testtask'

# For rake-compiler
Rake::ExtensionTask.new do |ext|
  ext.name = 'sqlanywhere'
  ext.lib_dir = 'lib/sqlanywhere'
  ext.ext_dir = 'ext/sqlanywhere'
  ext.tmp_dir = 'tmp'
  ext.source_pattern = "*.{c,cpp}"
  ext.gem_spec = Gem::Specification.load('sqlanywhere.gemspec')
end

Rake::TestTask.new do |t|
  t.libs = ["lib"]
  t.warning = true
  t.verbose = true
  t.test_files = FileList['test/*_test.rb']
end
