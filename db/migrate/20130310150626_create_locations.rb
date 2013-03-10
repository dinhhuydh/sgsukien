class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.integer :event_id

      t.string :street
      t.string :ward
      t.string :district
      t.string :city, :default => 'Ho Chi Minh'
      t.string :number
      t.string :country, :default => 'Vietnam'

      t.float :latitude
      t.float :longitude
      t.boolean :gmaps

      t.timestamps
    end
  end
end
