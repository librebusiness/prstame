class Admin::DashboardController < ApplicationController
  layout 'admin_dashboard'
  before_action :authenticate_admin!
  
  def index
    @managers = Manager.all
  end

  def settings
  end

  def manager
    @manager = Manager.find(params[:id])
  end

  def managers
    @managers = Manager.all
    respond_to do |format|
      format.json{send_data @managers.to_json}
    end
  end
end
