class HomeController < ApplicationController
  before_action :redirect_if_user_signed_in

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
    def redirect_if_user_signed_in
      if user_signed_in?
        redirect_to :dashboard
      end
    end
end
