class Person < ApplicationRecord
  validates :name, presence: true
  has_many :terms
  has_many :offices, through: :terms
end
