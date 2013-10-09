class Book < ActiveRecord::Base
  validates :title, :presence => true
  validates :author, :presence => true

  belongs_to :user
  belongs_to :category
end