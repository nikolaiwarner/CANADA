class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :title
      t.text :address
      t.string :phone

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end