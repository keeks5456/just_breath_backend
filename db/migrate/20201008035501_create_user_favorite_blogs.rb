class CreateUserFavoriteBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_favorite_blogs do |t|
      t.references :user
      t.references :blog

      t.timestamps
    end
  end
end
