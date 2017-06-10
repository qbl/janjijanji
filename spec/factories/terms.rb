FactoryGirl.define do
  factory :term do
    association :person
    association :office
    start_date Date.new(2017, 10, 1)
    thru_date Date.new(2017, 9, 30)
  end
end
