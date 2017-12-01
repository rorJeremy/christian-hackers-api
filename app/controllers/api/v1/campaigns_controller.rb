class Api::V1::CampaignsController < ApplicationController
  def index
  	@campaigns = Campaign.all
  	render json: @campaigns
  end

  def show
  	@campaign = Campaign.find(params[:id])
  	render json: @campaign
  end
end
