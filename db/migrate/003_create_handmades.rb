class CreateHandmades < ActiveRecord::Migration
  def self.up
    create_table :handmades do |t|
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :handmades
  end
end
