class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :img_url
      t.string :description

      t.timestamps
    end
  end
end
