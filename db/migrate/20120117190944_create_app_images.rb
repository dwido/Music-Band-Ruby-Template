class CreateAppImages < ActiveRecord::Migration
  def change
    create_table :app_images do |t|
      t.string :url
      t.boolean :main_screen
      t.references :gallery

      t.timestamps
    end
    add_index :app_images, :gallery_id
  end
end
