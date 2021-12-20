class RemoveDateFromTrainings < ActiveRecord::Migration[5.2]
  def change
    remove_column :trainings, :date, :date
  end
end
