class AddTokenToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :token, :string, null: false
    add_index :users, :token
  end
end
