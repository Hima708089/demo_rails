class CreateLeaves < ActiveRecord::Migration[7.0]
  def change
    create_table :leaves do |t|
      t.datetime :date
      t.string :reason
      t.integer :user_id

      t.timestamps
    end
  end
end
