class CampaignRegistration < ApplicationRecord
  belongs_to :campaign
  belongs_to :user
end
