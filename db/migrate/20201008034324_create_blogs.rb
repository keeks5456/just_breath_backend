class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :img_url
      t.string :description

      t.timestamps
    end
  end
end
