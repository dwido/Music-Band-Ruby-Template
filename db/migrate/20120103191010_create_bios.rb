class CreateBios < ActiveRecord::Migration
  def change
    create_table :bios do |t|
      t.string :name
      t.text :content
      t.string :imagename
      t.string :url

      t.timestamps
    end
  end
end
