class ChangePhoneDataType < ActiveRecord::Migration[5.1]
  def change
    change_column(:clients, :phone, :string)
    change_column(:contacts, :phone, :string)
    change_column(:employees, :phone, :string)
  end
end
