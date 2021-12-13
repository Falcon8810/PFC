class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.date :date, null: false

      t.timestamps
    end
  end
end
