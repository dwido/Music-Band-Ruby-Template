class RemoveMainScreeFromAppImages < ActiveRecord::Migration
  def up
    remove_column :app_images, :main_screen
  end

  def down
    add_column :app_images, :main_screen, :boolean
  end
end
