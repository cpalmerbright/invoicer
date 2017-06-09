class Invoice < ApplicationRecord
  belongs_to :employee
  belongs_to :client
  has_many :jobs

end
