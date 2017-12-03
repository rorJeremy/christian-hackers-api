class AddCampaignToExperts < ActiveRecord::Migration[5.1]
  def change
    add_reference :experts, :campaign, index: true
    add_foreign_key :experts, :campaigns
  end
end
