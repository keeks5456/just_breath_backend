class User < ApplicationRecord
    has_many :journal_entries

    has_many :blogs 
    has_many :blogs, through: :user_favorite_blogs

    has_many :exercises
    has_many :exercises, through: :user_favorite_exercises

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }

end
