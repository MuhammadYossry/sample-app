class AddCreatedAtIndexToComments < ActiveRecord::Migration
  def change
    add_index      :comments, [:post_id, :created_at]
  end
end
