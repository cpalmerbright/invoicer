class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.date :start_date
      t.date :end_date
      t.integer :duration
      t.integer :rate
      t.integer :total
      t.boolean :invoiced, default: false
      t.boolean :paid, default: false
      t.references :employee, foreign_key: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
