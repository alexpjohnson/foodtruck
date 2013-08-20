class CreateTrucks < ActiveRecord::Migration
  def change
    create_table :trucks do |t|
  		t.integer :truck_id
  		t.string :applicant
  		t.string :facility_type
  		t.integer :cnn
  		t.string :location_description
  		t.string :address
  		t.string :block_lot
  		t.string :block
  		t.string :lot
  		t.string :permit
  		t.string :status
  		t.string :food_items
  		t.decimal :x
  		t.decimal :y
  		t.decimal :latitude
  		t.decimal :longitude
      t.string :schedule
  		t.string :approved
  		t.datetime :received
  		t.integer :prior_permit
  		t.datetime :expiration_date
	    t.timestamps
  	end 
    add_index :trucks, :truck_id
  end
end
