class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.boolean :paid, default: false

      t.timestamps
    end
  end
end
