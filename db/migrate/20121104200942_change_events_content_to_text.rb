class ChangeEventsContentToText < ActiveRecord::Migration 
    def up
        change_column :events, :content, :text
    end
    def down
        # This might cause trouble if you have strings longer
        # than 255 characters.
        change_column :events, :content, :string
    end
end

