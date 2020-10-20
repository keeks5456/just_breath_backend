class UserFavoriteExercisesSerializer < ActiveModel::Serializer
  attributes :id, 

  belongs_to :user
  belongs_to :exercise
end
