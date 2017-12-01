class CreateExperts < ActiveRecord::Migration[5.1]
  def change
    create_table :experts do |t|
      t.string  :name,       null: false
      t.text    :description
      t.string	:main_link
      t.string	:secondary_link
      t.integer	:week

      t.timestamps
    end
  end
end
