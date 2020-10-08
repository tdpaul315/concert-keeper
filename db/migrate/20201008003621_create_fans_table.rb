class CreateFansTable < ActiveRecord::Migration[5.2]
  def change
    create_table :fans do |t|
      t.string :username 
      t.string :location
      t.integer :age
      t.boolean :vip_guest
    end
  end
end
