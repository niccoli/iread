class User < ActiveRecord::Base
  validates_uniqueness_of :user_name
  has_secure_password 

  validates :user_name, :presence => true
  validates :password_digest, :presence => true

  has_many :readings
  has_many :books
end