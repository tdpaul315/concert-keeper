class RemoveLocationFromFans < ActiveRecord::Migration[5.2]
  def change
    remove_column :fans, :location
  end
end
