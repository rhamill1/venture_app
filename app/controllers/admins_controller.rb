class AdminsController < ApplicationController

  before_action :logged_in?

  def home
    @partners = Partner.all
    @companies = Company.all
  end

end
