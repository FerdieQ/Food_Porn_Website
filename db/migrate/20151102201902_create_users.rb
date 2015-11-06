class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email
      t.string :gender
      t.string :city
      t.string :country
      t.boolean :moderator, default: false
      t.string :password_digest
      t.timestamps null: false
    end
  end
end
