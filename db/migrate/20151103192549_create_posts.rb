class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :author
      t.string :image
      t.string :html_id
      t.string :author_id

      t.timestamps null: false
    end
  end
end
