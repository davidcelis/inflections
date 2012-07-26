#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'rake/testtask'

task :default => :test
Rake::TestTask.new(:test) do |t|
  t.test_files = Dir.glob('*_test.rb')
  t.verbose = true
end
