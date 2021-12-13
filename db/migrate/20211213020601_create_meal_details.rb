class CreateMealDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :meal_details do |t|
      t.integer :meal_id
      t.integer :my_menu_id
      t.string :name
      t.integer :calory
      t.float :protein
      t.float :fat
      t.float :carb

      t.timestamps
    end
  end
end
