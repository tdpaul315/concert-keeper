class AddPasswordToFans < ActiveRecord::Migration[5.2]
  def change
    add_column :fans, :password_digest, :string
  end
end
