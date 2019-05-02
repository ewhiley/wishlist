class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :phone_no
      t.string :street_number
      t.string :street_address
      t.string :suburb
      t.string :postcode
      t.string :state
      t.integer :user_id

      t.timestamps
    end
  end
end
