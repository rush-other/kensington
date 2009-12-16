class CreateSoaps < ActiveRecord::Migration
  def self.up
    create_table :soap do |t|
      t.string :name
      t.text :description
      t.string :ingredients
      t.string :size
      t.decimal :price

      t.timestamps
    end
  end

  def self.down
    drop_table :soap
  end
end
