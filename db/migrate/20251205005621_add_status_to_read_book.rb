class AddStatusToReadBook < ActiveRecord::Migration[8.1]
  def change
    add_column :read_books, :status, :string
  end
end
