require 'rails_helper'

describe Person do
  it "is valid with a name" do
    person = Person.new(
      name: 'Anies Rasyid Baswedan'
    )

    expect(person).to be_valid
  end

  it "is invalid without a name" do
    person = Person.new(
      name: nil
    )
    person.valid?

    expect(person.errors[:name]).to include("can't be blank")
  end
end