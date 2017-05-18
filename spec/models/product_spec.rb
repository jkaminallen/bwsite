require 'rails_helper'

describe Product do
  it { should have_valid(:name).when('Jon Jon', 'Steve') }
  it { should_not have_valid(:name).when(nil, '') }
end
