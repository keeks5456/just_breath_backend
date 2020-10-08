class AddColumnToUserFavoriteBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :user_favorite_blogs, :favorite, :integer
  end
end
