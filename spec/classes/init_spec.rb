require 'spec_helper'
describe 'package' do

  context 'with defaults for all parameters' do
    it { should contain_class('package') }
  end
end
