class AddUsernameToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :username, :string # add new column of strings called "username" to table "users"
  	add_index :users, :username, unique: true # first, index usernames for quick (rapid) lookup. Second ensure usernames are always unique
  end
end
