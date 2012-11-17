class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.integer :id_education
      t.string :name
      t.date :start_time
      t.date :end_time
      t.string :degree
      t.text :activites

      t.timestamps
    end
  end
end
