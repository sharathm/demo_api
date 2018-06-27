class AddDetailsToRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :title, :string
    add_column :rentals, :owner, :string
    add_column :rentals, :city, :string
    add_column :rentals, :category, :string
    add_column :rentals, :image, :string
    add_column :rentals, :bedrooms, :string
    add_column :rentals, :description, :string
  end
end
