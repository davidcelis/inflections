#!/usr/bin/env rake

require 'bundler/gem_tasks'
require 'rake/testtask'

task :default => :test
task :test do
  Dir.glob('test/*_test.rb').each do |test_file|
    ENV['TEST'] = test_file
    Rake::Task['each_test'].execute
  end
end

Rake::TestTask.new(:each_test) do |t|
  t.libs << 'test'
  t.test_files = Dir.glob('test/*_test.rb')
  t.verbose = true
end
