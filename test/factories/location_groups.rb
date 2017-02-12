FactoryGirl.define do
  factory :location_group do
    sequence(:name) { |i| "name_#{i}" }
    country_id 1
    panel_provider_id 1
  end
end
