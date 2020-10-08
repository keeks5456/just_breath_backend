class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :bio, :password

  has_many :journal_entries

  has_many :blogs 
  has_many :blogs, through: :user_favorite_blogs

  has_many :exercises
  has_many :exercises, through: :user_favorite_exercises
  
end
