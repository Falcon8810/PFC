class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.date :date, null: false
      t.integer :category, null: false

      t.timestamps
    end
  end
end
