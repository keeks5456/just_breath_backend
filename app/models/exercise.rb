class Exercise < ApplicationRecord
    has_many :user_favorite_exercises, dependent: :destroy
    has_many :users, through: :user_favorite_exercises, dependent: :destroy
end
