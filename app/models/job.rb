class Job < ApplicationRecord
  belongs_to :employee
  belongs_to :client
  belongs_to :invoice

  before_save :calculate_total

  def calculate_total
    self.total = rate*duration
  end
end
