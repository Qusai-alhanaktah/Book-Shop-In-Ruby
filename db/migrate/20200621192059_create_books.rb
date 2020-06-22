class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :isbn
      t.string :format
      t.text :excerpt
      t.string :price
      t.integer :pages
      t.integer :category_id
      t.integer :publisher_id
      t.string :year
      t.string :buy
      t.integer :author_id

      t.timestamps
    end
  end
end
