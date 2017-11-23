class Api::V1::CampaignRegistrationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @campaign_registrations = current_user.campaign_registrations.order('updated_at ASC')
    render json: @campaign_registrations
  end

  def show
    @campaign_registration = current_user.campaign_registrations.find(params[:campaign_id])
    render json: @campaign_registration
  end

  def registered_or_nah
    if CampaignRegistration.where(campaign_id: params[:campaign_id], user_id: current_user.id).first
      @registered = true
    else 
      @registered = false
    end
    render json: @registered
  end

  def create
    @registration = CampaignRegistration.where(campaign_id: params[:campaign_id], user_id: current_user.id).first
    if @registration.nil?
      @registration = CampaignRegistration.new(campaign_id: params[:campaign_id], user_id: current_user.id)
      if @registration.save
        render json: @registration
      else
        render json: @registration.errors, status: :unprocessable_entity
      end
    else
      render json: @registration
    end
  end

  def destroy
    if CampaignRegistration.where(campaign_id: params[:campaign_id], user_id: current_user.id).destroy_all
      head :no_content, status: :ok
    else
      render json: @registration.errors, status: :unprocessable_entity
    end
  end
end