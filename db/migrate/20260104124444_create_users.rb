class CreateUsers < ActiveRecord::Migration[8.1]
  def change
    create_table :users do |t|
      t.string :email_address, null: false
      t.string :password_digest, null: false
      # This is for the "Remember Me" functionality
      t.string :session_token 

      t.timestamps
    end
    add_index :users, :email_address, unique: true
  end
end
