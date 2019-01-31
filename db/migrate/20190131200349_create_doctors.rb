class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :first_name
      t.string :last_name
      t.belongs_to :city, index: true
      t.string :zip_code
      t.timestamps
    end
  end
end
