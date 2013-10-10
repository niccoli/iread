class ChangeAuthorToAuthorIdInBooks < ActiveRecord::Migration
  def change
    change_table :books do |t|
      t.rename :author, :author_id
    end
  end
end
