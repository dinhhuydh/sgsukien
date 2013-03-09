class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :name
      t.integer :assetable_id
      t.string :assetable_type

      t.timestamps
    end
  end
end
