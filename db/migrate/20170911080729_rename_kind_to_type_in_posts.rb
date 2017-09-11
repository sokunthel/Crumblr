class RenameKindToTypeInPosts < ActiveRecord::Migration
  def change
    rename_column :posts, :kind, :type
  end
end
