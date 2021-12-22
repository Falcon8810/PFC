class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.date :training_date
      t.integer :event_id

      t.timestamps
    end
  end
end
