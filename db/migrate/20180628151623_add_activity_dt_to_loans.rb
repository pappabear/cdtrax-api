class AddActivityDtToLoans < ActiveRecord::Migration[5.0]
  def change
    add_column :loans, :activity_dt, :date
  end
end
