class CreateIntro < ActiveRecord::Migration
  def self.up
    create_table :intro do |t|
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :intro
  end
end
