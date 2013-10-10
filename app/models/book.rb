class Book < ActiveRecord::Base
  validates :title, :presence => true

  belongs_to :category
  belongs_to :author

  has_many :readings
end