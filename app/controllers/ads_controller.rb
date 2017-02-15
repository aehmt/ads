class AdsController < ApplicationController
  before_action :set_ad, only: [:show, :update, :destroy]

  # GET /ads
  def index
    @ads = Ad.all

    render json: @ads
  end

  # GET /ads/1
  def show
    render json: @ad
  end

  # POST /ads
  def create
    @ad = Ad.new(ad_params)

    if @ad.save
      render json: @ad, status: :created, location: @ad
    else
      render json: @ad.errors, status: :unprocessable_entity
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad
      @ad = Ad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ad_params
      params.require(:ad).permit(:name, :adgroup_id, :headline_part1, :headline_part2, :description, :path1, :path2, :final_urls)
    end
end
