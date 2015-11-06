class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url_link
      t.string :comments
      t.integer :likes
      t.integer :user_id
      t.references :user, index: true, foreign_key: true
      t.timestamps null: false

    end
  end
end
