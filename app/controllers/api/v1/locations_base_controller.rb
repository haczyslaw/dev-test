class Api::V1::LocationsBaseController < ActionController::Base
  def show
    country = Country.find_by_country_code(params[:country_code])

    if country
      render json: country.panel_provider.locations
    else
      head :not_found
    end
  end
end
