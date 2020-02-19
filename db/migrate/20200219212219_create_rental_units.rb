class CreateRentalUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :rental_units do |t|
      t.string :type
      t.string :rental_id
      t.string :title
      t.string :owner
      t.string :city
      t.string :category
      t.string :image
      t.string :description
      t.integer :lat
      t.integer :lng
      t.integer :bedrooms

      t.timestamps
    end
  end
end
