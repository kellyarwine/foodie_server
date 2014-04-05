class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :source_url
      t.string :food2fork_id
      t.string :image_url

      t.timestamps
    end
  end
end
