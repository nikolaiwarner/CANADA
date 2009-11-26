class CreateOrganizations < ActiveRecord::Migration
  def self.up
    create_table :organizations do |t|
      t.string :title
      t.string :description
      t.string :link

      t.timestamps
    end
  end

  def self.down
    drop_table :organizations
  end
end