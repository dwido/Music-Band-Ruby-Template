class AddThumbnailUrlToAppImages < ActiveRecord::Migration
  def change
    add_column :app_images, :thumbnail_url, :string
  end
end
