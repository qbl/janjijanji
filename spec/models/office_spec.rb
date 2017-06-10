require 'rails_helper'

RSpec.describe Office, type: :model do
  it "has a valid factory" do
    expect(build(:office)).to be_valid
  end

  it "is valid with a name and start_date" do
    office = build(:office, name: "Gubernur DKI Jakarta")
    expect(office).to be_valid
  end

  it "is invalid without a name" do
    office = build(:office, name: nil)
    office.valid?

    expect(office.errors[:name]).to include("can't be blank")
  end
end