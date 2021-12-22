class CreateTrainingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :training_details do |t|
      t.references :training, foreign_key: true
      t.float :weight
      t.integer :repetition
      t.float :time
      t.float :distance
      t.string :memo
      t.integer :body_part, null: false
      t.string :training_name, null: false

      t.timestamps
    end
  end
end
