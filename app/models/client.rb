class Client < ApplicationRecord
  validates :phone, phone: true

  has_many :contacts
  has_many :jobs
  has_many :employees, through: :jobs
  has_many :invoices

end
