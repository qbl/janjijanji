class Term < ApplicationRecord
  belongs_to :person
  belongs_to :office
  validates :start_date, presence: true
end
