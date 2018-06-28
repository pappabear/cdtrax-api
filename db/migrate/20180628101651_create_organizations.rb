class CreateOrganizations < ActiveRecord::Migration[5.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :phone
      t.float :revenue
      t.integer :number_of_employees
      t.text :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :website

      t.timestamps
    end
  end
end
