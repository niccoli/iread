require 'spec_helper'

describe Book do
  it { should validate_presence_of :title }

  it { should belong_to :category }
  it { should belong_to :author }

  it { should have_many :readings }
end