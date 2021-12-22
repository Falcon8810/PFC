class CreateBodies < ActiveRecord::Migration[5.2]
  def change
    create_table :bodies do |t|
      t.references :user, foreign_key: true
      t.float :weight
      t.float :bfp
      t.string :image_id
      t.date :record_date

      t.timestamps
    end
  end
end
