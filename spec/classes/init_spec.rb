# frozen_string_literal: true

require 'spec_helper'
describe 'inert' do
  context 'with default values for all parameters' do
    it { should contain_class('inert') }
  end
end
