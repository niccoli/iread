class RemoveAuthorIdFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :author_id, :string
  end
end
