class User < ApplicationRecord
    has_many :journal_entries, dependent: :destroy

    has_many :user_favorite_blogs
    has_many :user_favorite_exercises

    has_many :blogs 
    has_many :blogs, through: :user_favorite_blogs

    has_many :exercises, dependent: :destroy
    has_many :exercises, through: :user_favorite_exercises, dependent: :destroy

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :password, presence: true

end
