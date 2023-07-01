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
        redirect_to dashboard_url
      end
    end
end
