class CreateSoapmaker < ActiveRecord::Migration
  def self.up
    create_table :soapmaker do |t|
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :soapmaker
  end
end
