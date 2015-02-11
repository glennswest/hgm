class CreateHostGroups < ActiveRecord::Migration
  def change
    create_table :host_groups do |t|
      t.string :groupname
      t.string :emailaddress
    end
  end
end
