class Campaign < ApplicationRecord
  has_many :campaign_registrations
  has_many :users, through: :campaign_registrations
end
