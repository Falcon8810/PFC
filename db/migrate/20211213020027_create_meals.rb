class CreateMeals < ActiveRecord::Migration[5.2]
  def change
    create_table :meals do |t|
      t.references :user, foreign_key: true
      t.date :date, null: false
      t.integer :category, null: false
      t.string :image_id

      t.timestamps
    end
  end
end
