class ChangeDateToDateTime < ActiveRecord::Migration[6.0]
  def change
    change_column :ingredients, :date, :datetime
  end
end
