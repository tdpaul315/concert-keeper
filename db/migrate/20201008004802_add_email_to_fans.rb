class AddEmailToFans < ActiveRecord::Migration[5.2]
  def change
    add_column :fans, :email, :string
  end
end
