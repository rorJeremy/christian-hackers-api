class CreateCampaignRegistrations < ActiveRecord::Migration[5.1]
  def change
    create_table :campaign_registrations do |t|
      t.belongs_to :campaign, index: true, foreign_key: true
      t.belongs_to :user,     index: true, foreign_key: true
      
      t.timestamps
    end
  end
end
