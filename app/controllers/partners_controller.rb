class PartnersController < ApplicationController

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

  private

  def partner_params
    params.require(:partner).permit(:name, :title, :twitter, :linkedin, :subtitle, :bio, :home_image, :bio_image, :background_image, :story_image, :story_image_text, :signature_image)


  end

end
