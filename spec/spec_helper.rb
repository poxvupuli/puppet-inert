# frozen_string_literal: true

require 'rspec-puppet/spec_helper'

fixture_path = File.expand_path(File.join(__dir__, 'fixtures'))

RSpec.configure do |c|
  c.module_path = File.join(fixture_path, 'modules')
  c.manifest_dir = File.join(fixture_path, 'manifests')
end
