class CreateVolunteers < ActiveRecord::Migration[5.0]
  def change
    create_table :volunteers do |t|
      t.string :employee_code
      t.string :name
      t.string :title

      t.timestamps
    end
  end
end
