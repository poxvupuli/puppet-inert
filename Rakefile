# frozen_string_literal: true

require 'puppetlabs_spec_helper/rake_tasks'
require 'puppet-lint/tasks/puppet-lint'
require 'metadata-json-lint/rake_task'
require 'rspec-puppet/rake_task'
require 'puppet-strings/tasks'
require 'rubocop/rake_task'
RuboCop::RakeTask.new

begin
  if Gem::Specification.find_by_name('puppet-lint')
    require 'puppet-lint/tasks/puppet-lint'
    PuppetLint.configuration.send('disable_80chars')
    PuppetLint.configuration.relative = true
    PuppetLint.configuration.ignore_paths = ['spec/**/*.pp', 'vendor/**/*.pp']
    task default: %i[rspec lint]
  end
rescue Gem::LoadError
  task default: :rspec
end
