class CreateEstimates < ActiveRecord::Migration[5.1]
  def change
    create_table :estimates do |t|
      t.integer :currently_listed
      t.string :prop_owner_name
      t.string :contact_name
      t.string :email
      t.string :phone
      t.string :street
      t.string :street2
      t.string :city
      t.string :state
      t.bigint :zip
      t.integer :beds
      t.integer :baths
      t.bigint :home_sf
      t.bigint :prop_sf
      t.integer :num_garages
      t.integer :pool
      t.integer :spa
      t.text :upgrades
      t.text :damage
      t.text :photo
      t.text :tod_call

      t.timestamps
    end
  end
end
