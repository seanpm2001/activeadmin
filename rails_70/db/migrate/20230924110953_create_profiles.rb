class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.text :bio
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
