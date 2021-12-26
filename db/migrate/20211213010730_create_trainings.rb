class CreateTrainings < ActiveRecord::Migration[5.2]
  def change
    create_table :trainings do |t|
      t.references :user, foreign_key: true
      t.date :training_date

      t.timestamps
    end
  end
end
