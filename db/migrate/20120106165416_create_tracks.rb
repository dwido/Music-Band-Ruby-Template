class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name
      t.integer :order_number
      t.references :cd

      t.timestamps
    end
    add_index :tracks, :cd_id
  end
end
