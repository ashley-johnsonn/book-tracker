class CreateReadBooks < ActiveRecord::Migration[8.1]
  def change
    create_table :read_books do |t|
      t.string :title
      t.string :author
      t.date :date_published
      t.text :description
      t.integer :rating
      t.date :date_finished

      t.timestamps
    end
  end
end
