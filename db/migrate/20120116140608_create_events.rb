class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :title
      t.text :description
      t.text :likes

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
