class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :body_part, null: false
      t.string :name, null: false

      t.timestamps
    end
  end
end
