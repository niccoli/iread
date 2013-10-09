class User < ActiveRecord::Base
  validates :user_name, :presence => true
  validates :password_digest, :presence => true

  has_many :books
end