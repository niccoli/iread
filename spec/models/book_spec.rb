require 'spec_helper'

describe Book do
  it { should validate_presence_of :title }
  it { should validate_presence_of :author }

  it { should belong_to :user }
  it { should belong_to :category }
end