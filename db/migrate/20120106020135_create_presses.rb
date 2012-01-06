class CreatePresses < ActiveRecord::Migration
  def change
    create_table :presses do |t|
      t.string :location
      t.text :content
      t.string :reviewer
      t.string :readmoreurl

      t.timestamps
    end
  end
end
