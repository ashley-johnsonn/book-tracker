class ChangePublishedDateToYear < ActiveRecord::Migration[8.1]
  def change
    remove_column :read_books, :date_published, :date
    add_column :read_books, :year_published, :integer
  end
end
