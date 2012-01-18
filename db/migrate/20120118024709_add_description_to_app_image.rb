class AddDescriptionToAppImage < ActiveRecord::Migration
  def change
    add_column :app_images, :description, :string
  end
end
