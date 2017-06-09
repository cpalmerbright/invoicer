class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.references :company, index: true, foreign_key: { to_table: :clients }
      t.string :name
      t.integer :phone

      t.timestamps
    end
  end
end
