class Blog < ApplicationRecord
    has_many :user_favorite_blog
    has_many :users, through: :user_favorite_blogs
end
