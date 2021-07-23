class PublishingCompaniesController < ApplicationController
  include Authenticable
  before_action :authenticate_with_token
  before_action :set_publishing_company, only: [:show, :update, :destroy]

  # GET /publishing_companies
  def index
    @publishing_companies = PublishingCompany.all

    render json: @publishing_companies
  end

  # GET /publishing_companies/1
  def show
    render json: @publishing_company
  end

  # POST /publishing_companies
  def create
    @publishing_company = PublishingCompany.new(publishing_company_params)

    if @publishing_company.save
      render json: @publishing_company, status: :created, location: @publishing_company
    else
      render json: @publishing_company.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /publishing_companies/1
  def update
    if @publishing_company.update(publishing_company_params)
      render json: @publishing_company
    else
      render json: @publishing_company.errors, status: :unprocessable_entity
    end
  end

  # DELETE /publishing_companies/1
  def destroy
    @publishing_company.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publishing_company
      @publishing_company = PublishingCompany.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def publishing_company_params
      params.require(:publishing_company).permit(:name)
    end
end
