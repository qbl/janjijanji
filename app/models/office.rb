class Office < ApplicationRecord
  validates :name, presence: true
  validates :start_date, presence: true
end
