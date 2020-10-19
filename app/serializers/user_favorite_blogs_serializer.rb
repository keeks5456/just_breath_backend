class UserFavoriteBlogsSerializer < ActiveModel::Serializer
  attributes :id, :favorites

  belongs_to :user
  belongs_to :blog
end
