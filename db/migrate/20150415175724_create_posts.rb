class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title,    null: false, default: ""
      t.text :body,       null: false, default: ""
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :posts, :users
    add_index       :posts, [:user_id, :created_at]
  end
end
