class User < ActiveRecord::Base
  has_secure_password
  has_many :photos
  has_many :comments

  validates :username, presence: true, uniqueness: true
  validates :password, length: {in: 4..8}, allow_nil: true
end

