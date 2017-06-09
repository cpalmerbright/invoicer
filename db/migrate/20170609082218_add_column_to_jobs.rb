class AddColumnToJobs < ActiveRecord::Migration[5.1]
  def change
    add_reference :jobs, :invoice, foreign_key: true
  end
end
