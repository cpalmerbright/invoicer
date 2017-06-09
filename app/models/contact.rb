class Contact < ApplicationRecord

  belongs_to :company
  validates :phone, phone: true

end
