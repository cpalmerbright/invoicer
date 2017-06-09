class AddColumnsToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :street_address, :string
    add_column :employees, :suburb, :string
    add_column :employees, :postcode, :integer
  end
end
