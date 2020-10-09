class Blog < ApplicationRecord
    has_many :user_favorite_blogs
    has_many :users, through: :user_favorite_blogs
end
