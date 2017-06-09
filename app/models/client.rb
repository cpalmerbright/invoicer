class Client < ApplicationRecord
  validates :phone, phone: { possible: true, country_specifier: -> phone { phone.country.try(:upcase) } }


end
