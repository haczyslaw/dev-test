FactoryGirl.define do
  factory :location do
    sequence(:name) { |i| "name_#{i}" }
    external_id 'some external id'
    secret_code 'some secret code'
  end
end
