class PartnersController < ApplicationController

  before_action :logged_in?
  before_action :get_partner, only: [:show, :edit, :update, :destroy]

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.create(partner_params)
    if @partner.save
      flash[:success] = 'Partner Created!'
      redirect_to admin_path
    else
      flash[:error] = @partner.errors.full_messages.join(' ')
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @partner.update(partner_params)
      flash[:success] = 'Partner Updated!'
      redirect_to admin_path
    else
      flash[:error] = @partner.errors.full_messages.join(' ')
      render :edit
    end
  end

  def destroy
    @partner.destroy
    redirect_to admin_path
  end

  private

    def partner_params
      params.require(:partner).permit(:name, :title, :twitter, :linkedin, :subtitle, :bio, :home_image, :bio_image, :background_image, :story_image, :story_image_text, :signature_image)
    end

    def get_partner
      @partner = Partner.find(params[:id])
    end


end
