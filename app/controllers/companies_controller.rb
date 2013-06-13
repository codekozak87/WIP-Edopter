class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end

  def show
    @company = Company.find_by_id(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    @company = Company.new
    @company.company_name = params[:company_name]
    @company.company_email = params[:company_email]
    @company.user_id = params[:user_id]
    @company.event_id = params[:event_id]
 

   if @company.save
      redirect_to company_url, :notice => "Startup Account Creation Success!"
    else
      redirect_to new_user_url, :notice => "Try again."
    end
  end

  def edit
    @company = Company.find_by_id(params[:id])
  end

  def update
    @company = Company.find_by_id(params[:id])
    @company.company_name = params[:company_name]
    @company.company_email = params[:company_email]
    @company.user_id = params[:user_id]
    @company.event_id = params[:event_id]
    
    if @company.save
            redirect_to companies_url
          else
      render 'edit'
    end
  end

  def destroy
    @company = Company.find_by_id(params[:id])
    @company.destroy
        redirect_to companies_url
      end
end
