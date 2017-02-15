class AdgroupsController < ApplicationController
  before_action :set_adgroup, only: [:show, :update, :destroy]

  # GET /adgroups
  def index
    @adgroups = Adgroup.all

    render json: @adgroups
  end

  # GET /adgroups/1
  def show
    render json: @adgroup
  end

  # POST /adgroups
  def create
    @adgroup = Adgroup.new(adgroup_params)

    if @adgroup.save
      render json: @adgroup, status: :created, location: @adgroup
    else
      render json: @adgroup.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adgroup
      @adgroup = Adgroup.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def adgroup_params
      params.require(:adgroup).permit(:name, :status, :bid_amount, :campaign_id)
    end
end
