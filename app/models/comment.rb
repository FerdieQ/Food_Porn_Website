class Comment < ActiveRecord::Base
  #relationship to photos and users
  belongs_to :photo
  belongs_to :user
end
