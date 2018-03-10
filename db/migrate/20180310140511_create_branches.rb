class CreateBranches < ActiveRecord::Migration[5.0]
  def change
    create_table :branches do |t|
      t.string :code
      t.string :description

      t.timestamps
    end
  end
end
