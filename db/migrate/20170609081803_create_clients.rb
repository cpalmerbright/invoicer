class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :phone
      t.string :street_address
      t.string :suburb
      t.integer :postcode
      t.integer :abn

      t.timestamps
    end
  end
end
