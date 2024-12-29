class AddViewCountToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :view_count, :integer, default: 0

    # Add an index for faster sorting
    add_index :posts, :view_count
  end
end
