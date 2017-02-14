require_relative 'locations_base_controller'

class Api::V1::LocationsController < Api::V1::LocationsBaseController
  include WardenHelper
end
