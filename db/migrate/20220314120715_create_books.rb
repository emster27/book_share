class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :publish_year
      t.integer :pages
      t.text :description
      t.string :image
      t.integer :author_id

      t.timestamps
    end
  end
end
