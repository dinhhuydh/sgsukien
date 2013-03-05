class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.datetime :datetime
      t.string :address
      t.string :message
      t.text :description

      t.timestamps
    end
  end
end
