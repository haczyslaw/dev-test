FactoryGirl.define do
  factory :target_group do
    sequence(:name) { |i| "name_#{i}" }
    panel_provider_id 1
    external_id 'some external id'
    secret_code 'some secret code'
  end
end
