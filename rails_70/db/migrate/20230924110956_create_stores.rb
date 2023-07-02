class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :user_id
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
