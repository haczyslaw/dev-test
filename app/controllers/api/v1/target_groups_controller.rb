require_relative 'target_groups_base_controller'

class Api::V1::TargetGroupsController < Api::V1::TargetGroupsBaseController
  include WardenHelper
end
