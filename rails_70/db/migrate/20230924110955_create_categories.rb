class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
