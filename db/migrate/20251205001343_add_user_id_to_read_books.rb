class AddUserIdToReadBooks < ActiveRecord::Migration[8.1]
  def change
    add_column :read_books, :user_id, :integer
  end
end
