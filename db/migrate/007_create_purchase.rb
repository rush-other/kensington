class CreatePurchase < ActiveRecord::Migration
  def self.up
    create_table :purchase do |t|
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :purchase
  end
end
