class RenameRentalTypeColumn < ActiveRecord::Migration[6.0]
  def change
    rename_column :rental_units, :type, :rental_type
  end
end
