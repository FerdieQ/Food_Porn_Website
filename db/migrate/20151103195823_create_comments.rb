class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :content
      t.timestamps null: true
      t.integer :user_id
      t.references :user, index: true, foreign_key: true
      t.integer :photo_id
      t.references :photo, index: true, foreign_key: true
    end
  end
end
