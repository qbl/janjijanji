require 'rails_helper'

RSpec.describe Person, type: :model do
  it "has a valid factory" do
    expect(build(:person)).to be_valid
  end

  it "is invalid without a name" do
    person = build(:person, name: nil)
    person.valid?

    expect(person.errors[:name]).to include("can't be blank")
  end
end