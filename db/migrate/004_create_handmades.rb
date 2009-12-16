class CreateHandmade < ActiveRecord::Migration
  def self.up
    create_table :handmade do |t|
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :handmade
  end
end
