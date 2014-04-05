class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :qty
      t.string :unit_of_measure
      t.string :prep
      t.string :food

      t.timestamps
    end
  end
end
