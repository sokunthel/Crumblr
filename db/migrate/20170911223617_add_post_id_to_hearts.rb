class AddPostIdToHearts < ActiveRecord::Migration
  def change
    add_column :hearts, :post_id, :integer
  end
end
