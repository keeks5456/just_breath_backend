class CreateUserFavoriteExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :user_favorite_exercises do |t|
      t.references :user
      t.references :exercise
      
      t.timestamps
    end
  end
end
