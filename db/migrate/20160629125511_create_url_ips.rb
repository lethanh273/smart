class CreateUrlIps < ActiveRecord::Migration
  def change
    create_table :url_ips do |t|
      t.integer :url_id
      t.integer :ip_address

      t.timestamps null: false
    end
  end
end
