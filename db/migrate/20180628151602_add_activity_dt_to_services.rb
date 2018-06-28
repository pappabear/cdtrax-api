class AddActivityDtToServices < ActiveRecord::Migration[5.0]
  def change
    add_column :services, :activity_dt, :date
  end
end
