class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.date :dateofevent
      t.time :timeofevent
      t.string :townstate
      t.string :address
      t.string :content

      t.timestamps
    end
  end
end
