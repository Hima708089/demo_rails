class CreateHolidays < ActiveRecord::Migration[7.0]
  def change
    create_table :holidays do |t|
      t.datetime :date
      t.string :description
      t.timestamps
    end
  end
end
