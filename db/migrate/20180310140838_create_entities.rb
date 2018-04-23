class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :revenue
      t.string :website
      t.string :number_of_employees
      t.text :mission
      t.timestamps
    end
  end
end
