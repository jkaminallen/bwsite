class AddColumnsToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :price, :integer
    add_column :products, :color, :string
    add_column :products, :picture, :string
  end
end
