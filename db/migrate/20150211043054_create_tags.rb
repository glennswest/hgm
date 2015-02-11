class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.integer :hostgroupid
      t.integer :hostid
    end
  end
end
