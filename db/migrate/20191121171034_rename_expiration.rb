class RenameExpiration < ActiveRecord::Migration[6.0]
  def change
    change_column :ingredients, :expiration, :datetime
  end
end
