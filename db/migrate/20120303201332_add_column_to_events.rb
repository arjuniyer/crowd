class AddColumnToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :uid, :bigint
  end

  def self.down
    remove_column :events, :uid
  end
end
