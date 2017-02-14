require_relative 'target_groups_base_controller'

class Api::V1::TargetGroupsController < Api::V1::TargetGroupsBaseController
  include WardenHelper

  def evaluate_target
    # I'm not sure, what I should do here ...
    country = Country.find_by_country_code(target_params[:country_code])

    if country
      render json: { price: country.panel_provider.default_price }
    else
      head :not_found
    end
  end

  private

  def target_params
    params.permit(:country_code, :target_group_id, locations: [])
  end
end
