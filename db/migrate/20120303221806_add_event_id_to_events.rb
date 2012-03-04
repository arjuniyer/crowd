class AddEventIdToEvents < ActiveRecord::Migration
  def self.up
    add_column :events, :fb_event_id, :bigint
  end

  def self.down
    remove_column :events, :fb_event_id
  end
end
