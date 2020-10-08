class ChangeFormatDateColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :concerts, :date_time, :string
  end
end
