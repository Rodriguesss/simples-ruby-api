class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :genre
      t.string :author
      t.integer :pages
      t.integer :grade
      t.string :title
      t.boolean :read
      t.references :publishing_company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
