class CreateNatural < ActiveRecord::Migration
  def self.up
    create_table :natural do |t|
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :natural
  end
end
