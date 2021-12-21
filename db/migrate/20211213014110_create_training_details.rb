class CreateTrainingDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :training_details do |t|
      t.float :weight
      t.integer :repetition
      t.float :time
      t.float :distance
      t.string :memo

      t.timestamps
    end
  end
end
