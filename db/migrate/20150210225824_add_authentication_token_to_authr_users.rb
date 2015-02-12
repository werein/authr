class AddAuthenticationTokenToAuthrUsers < ActiveRecord::Migration
  def change
    add_column :authr_users, :authentication_token, :string
    add_index :authr_users, :authentication_token
  end
end
