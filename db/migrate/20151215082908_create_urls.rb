class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :long_url, :null => false
      t.string :short_partial_url, :null => false
      t.integer :clicks, :default => 0

      t.timestamps null: false
    end
    add_index :urls, :short_partial_url, :unique => true
  end
end
