require 'spec_helper'

describe Reading do
  it { should belong_to :user }
  it { should belong_to :book }
end