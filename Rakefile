require "bundler/gem_tasks"
require 'rake/testtask'

Rake::TestTask.new do |t|
  t.name       = 'test'         # this is the default
  t.libs       << 'test'
  t.test_files = Dir['test/*test*.rb']
  t.verbose    = true
end

