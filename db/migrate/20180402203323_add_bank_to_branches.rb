class AddBankToBranches < ActiveRecord::Migration[5.0]
  def change
    add_column :branches, :bank_id, :integer
  end
end
