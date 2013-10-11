class Book < ActiveRecord::Base
  validates :title, :presence => true

  belongs_to :category
  belongs_to :author
  belongs_to :user

  has_many :readings
end