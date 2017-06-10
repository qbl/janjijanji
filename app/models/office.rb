class Office < ApplicationRecord
  validates :name, presence: true
  has_many :terms
  has_many :people, through: :terms
end
