class AddActivityDtToInvestments < ActiveRecord::Migration[5.0]
  def change
    add_column :investments, :activity_dt, :date
  end
end
