class AddStatusToAppointments < ActiveRecord::Migration[5.1]
  def change
    add_column :appointments, :status, :integer
  end
end
