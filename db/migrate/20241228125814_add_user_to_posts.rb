class AddUserToPosts < ActiveRecord::Migration[7.0]
  def up
    # First, add the user_id column as nullable
    add_reference :posts, :user, null: true, foreign_key: true

    # If you want to create a default user for existing posts
    # (Optional, but recommended if you have existing posts)
    User.create!(email: 'admin@example.com', password: 'password123') if User.none?
    default_user = User.first

    # Update existing posts to belong to the default user
    Post.update_all(user_id: default_user.id) if default_user

    # Now make the user_id column non-nullable
    change_column_null :posts, :user_id, false
  end

  def down
    remove_reference :posts, :user
  end
end
