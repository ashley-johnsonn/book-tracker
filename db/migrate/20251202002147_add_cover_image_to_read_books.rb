class AddCoverImageToReadBooks < ActiveRecord::Migration[8.1]
  def change
    add_column :read_books, :cover_image_url, :string
  end
end
