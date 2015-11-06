class User < ActiveRecord::Base
  #relatioship to photos and comments
  has_many :photos
  has_many :comments

  #login and validation for user
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password, length: {in: 4..8}, allow_nil: true
end
