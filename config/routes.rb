Rails.application.routes.draw do
  # public API
  get 'locations/:country_code' => 'api/v1/public_locations#show', as: :pub_locations
  get 'target_groups/:country_code' => 'api/v1/public_target_groups#show', as: :pub_target_groups

  # private API
  namespace :api do
    namespace :v1 do
      get 'locations/:country_code' => 'locations#show', as: :prv_locations
      get 'target_groups/:country_code' => 'target_groups#show', as: :prv_target_groups
      post 'evaluate_target' => 'target_groups#evaluate_target', as: :evaluate_target
    end
  end
end
