class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :zipcode
      t.string :country
      t.string :state
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    
  end
end
