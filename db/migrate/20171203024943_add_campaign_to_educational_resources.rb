class AddCampaignToEducationalResources < ActiveRecord::Migration[5.1]
  def change
    add_reference :educational_resources, :campaign, index: true
    add_foreign_key :educational_resources, :campaigns
  end
end
