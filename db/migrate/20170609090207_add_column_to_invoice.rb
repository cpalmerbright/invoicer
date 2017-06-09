class AddColumnToInvoice < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :sent, :boolean, default: false
  end
end
