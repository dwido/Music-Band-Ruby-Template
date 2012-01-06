class CreateCds < ActiveRecord::Migration
  def change
    create_table :cds do |t|
      t.string :name
      t.integer :year
      t.text :reviews

      t.timestamps
    end
  end
end
