class AddTitleToExercises < ActiveRecord::Migration[6.0]
  def change
    add_column :exercises, :title, :string
  end
end
