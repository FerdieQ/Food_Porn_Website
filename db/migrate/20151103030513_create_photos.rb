class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url_link
      t.string :comments
      t.integer :likes

      t.timestamps null: false
    end
  end
end
