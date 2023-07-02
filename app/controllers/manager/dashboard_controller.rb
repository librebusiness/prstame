class Manager::DashboardController < ApplicationController
  layout 'manager_dashboard'
  before_action :authenticate_manager!
  
  def index
    @staff_members = Staff.where(manager_id: current_manager.id)
  end

  def settings
  end

  def staff_members
    @staff_members = Staff.where(manager_id: current_manager.id)
    respond_to do |format|
      format.json{send_data @staff_members.to_json}
    end
  end
end
