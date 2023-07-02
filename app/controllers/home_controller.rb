class HomeController < ApplicationController
  before_action :check_for_auth!

  def index
  end

  def about
  end

  def contact
  end

  def faqs
  end

  def feed
  end

  def pricing
  end

  def privacy_policy
  end

  def products
  end

  def terms
  end

  def team
  end

  private
    def check_for_auth!
      if admin_signed_in?
        redirect_to admin_dashboard_url
      end

      if manager_signed_in?
        redirect_to manager_dashboard_url
      end

      if staff_signed_in?
        redirect_to staff_dashboard_url
      end

      if customer_signed_in?
        redirect_to customer_dashboard_url
      end
    end
end
