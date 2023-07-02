class Customer::DashboardController < ApplicationController
  layout 'customer_dashboard'
  before_action :authenticate_customer!
  
  def index
  end

  def settings
  end
end
