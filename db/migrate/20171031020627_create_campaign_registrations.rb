class CreateCampaignRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :campaign_registrations do |t|

      t.timestamps
    end
  end
end
