class CreateCampaigns < ActiveRecord::Migration[5.1]
  def change
    create_table :campaigns do |t|
      t.string  :title,       null: false
      t.text    :description, null: false

      t.timestamps
    end
  end
end
