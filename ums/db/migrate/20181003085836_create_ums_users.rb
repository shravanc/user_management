class CreateUmsUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :ums_users do |t|
      t.string :username, default: ''
      t.string :firstname, default: ''
      t.string :lastname, default: ''
      t.string :email, default: ''
      t.string :mobile_phone, default: ''
      t.boolean :verified, default: false
      t.string :password_salt
      t.string :language, default: ''
      t.string :encrypted_password
      t.string :password      
      t.string :confirmation_token, default: ''


      t.timestamps
    end
  end
end
