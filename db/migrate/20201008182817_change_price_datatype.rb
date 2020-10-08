class ChangePriceDatatype < ActiveRecord::Migration[5.2]
  def change
    change_column :concerts, :ticket_price, :float
  end
end
