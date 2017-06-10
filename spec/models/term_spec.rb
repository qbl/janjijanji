require 'rails_helper'

RSpec.describe Term, type: :model do
  it "has a valid factory" do
    expect(build(:term)).to be_valid
  end

  it "is invalid without person" do
    term = build(:term, person: nil)
    term.valid?

    expect(term.errors[:person]).to include("must exist")
  end

  it "is invalid without office" do
    term = build(:term, office: nil)
    term.valid?

    expect(term.errors[:office]).to include("must exist")
  end

  it "is invalid without start_date" do
    term = build(:term, start_date: nil)
    term.valid?

    expect(term.errors[:start_date]).to include("can't be blank")
  end
end
