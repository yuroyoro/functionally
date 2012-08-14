require 'spec_helper'

describe Symbol do
  subject { :to_s }
  it_should_behave_like 'composable'
end
