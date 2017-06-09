class Employee < ApplicationRecord
  validates :phone, phone: true

  has_many :jobs
  has_many :invoices
  has_many :clients, through: :jobs
end
