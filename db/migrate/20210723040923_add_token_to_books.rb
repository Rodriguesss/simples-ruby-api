class AddTokenToBooks < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :token, :string, null: false
    add_index :books, :token
  end
end
