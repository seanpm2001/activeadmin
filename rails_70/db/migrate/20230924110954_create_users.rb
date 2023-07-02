class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :type
      t.string :first_name
      t.string :last_name
      t.string :username
      t.integer :age
      t.string :encrypted_password
      t.string :reason_of_sign_in
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
