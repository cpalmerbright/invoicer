class AddColumnsToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_reference :invoices, :employee, foreign_key: true
    add_reference :invoices, :client, foreign_key: true
  end
end
