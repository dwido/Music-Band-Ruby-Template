class AddMainScreenToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :main_screen, :boolean
  end
end
