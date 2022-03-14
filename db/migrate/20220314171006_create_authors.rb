class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.text :bio
      t.integer :book_count

      t.timestamps
    end
  end
end
