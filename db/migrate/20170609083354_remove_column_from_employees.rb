class RemoveColumnFromEmployees < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :name, :string
  end
end
