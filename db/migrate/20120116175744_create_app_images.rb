class CreateAppImages < ActiveRecord::Migration
  def change
    create_table :app_images do |t|
      t.string :url
      t.boolean :main_screen

      t.timestamps
    end
  end
end
