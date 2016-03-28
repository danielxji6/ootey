class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
      t.string :email
      t.string :password_digest
      t.string :legal_name
      t.string :dba
      t.string :type
      t.string :jbt_num
      t.string :jbt_rating
      t.string :first_name
      t.string :last_name
      t.string :phone
      t.string :cell_phone
      t.string :fax
      t.string :website
      t.string :facebook
      t.string :linkedin
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.integer :zip
      t.string :country

      t.timestamps null: false
    end
  end
end
