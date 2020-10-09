class BlogSerializer < ActiveModel::Serializer
  attributes :id, :img_url, :description

  has_many :user_favorite_blogs
  has_many :users, through: :user_favorite_blogs
end
