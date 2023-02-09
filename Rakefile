require "bundler/gem_tasks"
require "rake/testtask"
require "standard/rake"

task default: [:test, "standard:fix"]

desc "Run tests (default)"
Rake::TestTask.new(:test) do |t|
  t.test_files = FileList["test/*_test.rb"]
  t.ruby_opts = ["-Itest"]
  t.ruby_opts << "-rrubygems" if defined? Gem
  t.warning = false
end
