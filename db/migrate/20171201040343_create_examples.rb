class CreateExamples < ActiveRecord::Migration[5.1]
  def change
    create_table :examples do |t|
      t.string  :title,       null: false
      t.text    :description
      t.string	:main_link
      t.string	:secondary_link
      t.integer	:week

      t.timestamps
    end
  end
end
