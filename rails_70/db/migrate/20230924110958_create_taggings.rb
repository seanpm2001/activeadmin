class CreateTaggings < ActiveRecord::Migration[7.0]
  def change
    create_table :taggings do |t|
      t.integer :post_id
      t.integer :tag_id
      t.integer :position
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
