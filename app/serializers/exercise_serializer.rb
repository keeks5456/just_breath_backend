class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :img_url, :description, :title

  has_many :user_favorite_exercises
  has_many :users, through: :user_favorite_exercises
end
