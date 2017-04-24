class CompaniesController < ApplicationController

  def new
    @company = Company.new
  end

  def create
    @company = Company.create(company_params)
    if @company.save
      flash[:success] = 'Company Created!'
      redirect_to admin_path
    else
      flash[:error] = @company.errors.full_messages.join(' ')
      render :new
    end
  end

  private

    def company_params
      params.require(:company).permit(:name, :logo_image, :background_image, :tag_line, :twitter, :linkedin, :company_link)
    end

end
