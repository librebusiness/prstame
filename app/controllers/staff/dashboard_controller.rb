class Staff::DashboardController < ApplicationController
  layout 'staff_dashboard'
  before_action :authenticate_staff!
  
  def index
  end

  def settings
  end
end
