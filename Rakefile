begin
  require 'rspec/core/rake_task'
  require 'bundler/gem_tasks'

  RSpec::Core::RakeTask.new(:spec)
  task default: :spec
rescue LoadError
  # no rspec available
end
