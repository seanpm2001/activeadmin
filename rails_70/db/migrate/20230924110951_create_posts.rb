class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.date :published_date
      t.integer :author_id
      t.integer :position
      t.integer :custom_category_id
      t.boolean :starred
      t.integer :foo_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
