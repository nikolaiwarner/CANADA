class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :user_id
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :title
      t.text :description
      t.integer :location_id
      
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
