class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.integer :id_company
      t.string :year_founded
      t.text :adress
      t.text :description

      t.timestamps
    end
  end
end
