class StaticPagesController < ApplicationController
  def home

    @partners = Partner.all

    @companies = Company.all

  end
end
