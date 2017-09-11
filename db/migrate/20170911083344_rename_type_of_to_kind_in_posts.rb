class RenameTypeOfToKindInPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :type_of, :kind
  end
end
