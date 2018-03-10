class CreateEntities < ActiveRecord::Migration[5.0]
  def change
    create_table :entities do |t|
      t.string :code
      t.string :description
      t.string :phone
      t.integer :entity_group_id
      t.float :revenue
      t.integer :number_of_employees
      t.text :address
      t.string :csz
      t.string :website
      t.text :mission_statement

      t.timestamps
    end
  end
end
