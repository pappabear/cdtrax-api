class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :code
      t.string :name
      t.string :title
      t.integer :default_bank_id
      t.integer :default_branch_id
      t.boolean :is_user

      t.timestamps
    end
  end
end