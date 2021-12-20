class AddTitleToTrainings < ActiveRecord::Migration[5.2]
  def change
    add_column :trainings, :title, :string
    add_column :trainings, :starts_at, :datetime
    add_column :trainings, :ends_at, :datetime
  end
end
