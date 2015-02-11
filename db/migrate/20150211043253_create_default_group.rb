class CreateDefaultGroup < ActiveRecord::Migration
  def change
    create_table :default_groups do |t|
      t.string :emailaddress
      t.string :groupname
      t.integer :host_group_id
    end
  end
end
