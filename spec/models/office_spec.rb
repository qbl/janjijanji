require 'rails_helper'

describe Office do
  it "is valid with a name and start_date" do
    office = Office.new(
      name: 'Gubernur DKI Jakarta',
      start_date: Date.today
    )

    expect(office).to be_valid
  end

  it "is invalid without a name" do
    office = Office.new(
      name: nil,
      start_date: Date.today
    )
    office.valid?

    expect(office.errors[:name]).to include("can't be blank")
  end
end