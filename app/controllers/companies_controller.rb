class CompaniesController < ApplicationController

  before_action :logged_in?
  before_action :get_company, only: [:show, :edit, :update, :destroy]

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

  def show
  end

  def edit
  end

  def update
    if @company.update(company_params)
      flash[:success] = 'Company Updated!'
      redirect_to admin_path
    else
      flash[:error] = @company.errors.full_messages.join(' ')
      render :edit
    end
  end

  def destroy
    @company.destroy
    redirect_to admin_path
  end

  private

    def company_params
      params.require(:company).permit(:name, :logo_image, :background_image, :tag_line, :twitter, :linkedin, :company_link)
    end

    def get_company
      @company = Company.find(params[:id])
    end

end
