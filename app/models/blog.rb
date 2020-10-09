class Blog < ApplicationRecord
    has_many :user_favorite_blogs, dependent: :destroy
    has_many :users, through: :user_favorite_blogs, dependent: :destroy
end
