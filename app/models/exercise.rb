class Exercise < ApplicationRecord
    has_many :user_favorite_exercises
    has_many :users, through: :user_favorite_exercises
end
