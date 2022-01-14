# frozen_string_literal: true

require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

Rake.add_rakelib 'lib/tasks'

RSpec::Core::RakeTask.new(:spec)

require 'rubocop/rake_task'
RuboCop::RakeTask.new

task default: %i[rubocop spec]
