class AddCampaignToExamples < ActiveRecord::Migration[5.1]
  def change
    add_reference :examples, :campaign, index: true
    add_foreign_key :examples, :campaigns
  end
end
