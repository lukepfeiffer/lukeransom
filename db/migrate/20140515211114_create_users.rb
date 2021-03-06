class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :username
      t.string :password
      t.string :password_digest
      t.string :remember_token
      t.string :reset_password_token
      t.string :session_token
      t.timestamps
    end
  end
end
