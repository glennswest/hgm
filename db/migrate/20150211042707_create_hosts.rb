class CreateHosts < ActiveRecord::Migration
  def change
    create_table :hosts do |t|
      t.string :hostname
      t.string :ipaddr
      t.string :type
      t.string :macaddr
      t.integer :hostgroupid
    end
  end
end
