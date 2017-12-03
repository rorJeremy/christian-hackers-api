class Campaign < ApplicationRecord
  has_many :campaign_registrations
  has_many :users, through: :campaign_registrations
  has_many :experts
  has_many :examples
  has_many :educational_resources
end
