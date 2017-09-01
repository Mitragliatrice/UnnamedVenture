class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.string :name
      t.string :phone
      t.string :street
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
