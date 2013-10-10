require 'spec_helper'

describe Author do
  it { should validate_presence_of :name }

  it { should have_many :books }
end