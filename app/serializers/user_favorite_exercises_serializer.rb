class UserFavoriteExercisesSerializer < ActiveModel::Serializer
  attributes :id, :favorites

  belongs_to :user
  belongs_to :exercise
end
