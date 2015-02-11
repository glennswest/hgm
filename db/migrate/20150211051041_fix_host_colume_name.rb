class FixHostColumeName < ActiveRecord::Migration
  def change
      rename_column :hosts, :hostgroupid, :host_group_id
  end
end
