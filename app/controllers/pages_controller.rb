class PagesController < ApplicationController
    before_action :authenticate_user!

  def home

  end

  def users
  end

  def admin
  end
end
