class AddColumnToUserFavoriteExercise < ActiveRecord::Migration[6.0]
  def change
    add_column :user_favorite_exercises, :favorite, :boolean, default: false

  end
end
