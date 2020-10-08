class CreateConcertsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :concerts do |t|
      t.string :artist
      t.datetime :date_time
      t.string :location
      t.decimal :ticket_price
      t.boolean :alcohol_served
      t.integer :fan_id 
    end
  end
end
