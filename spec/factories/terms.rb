FactoryGirl.define do
  factory :term do
    association :person
    association :office
    start_date "2017-01-10"
    thru_date "2022-30-09"
  end
end
