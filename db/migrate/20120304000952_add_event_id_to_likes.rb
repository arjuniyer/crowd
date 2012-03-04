class AddEventIdToLikes < ActiveRecord::Migration
  def self.up
    add_column :likes, :event_id, :bigint
  end

  def self.down
    remove_column :likes, :event_id
  end
end
