class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :status
      t.integer :budget
      t.string :advertising_channel_type

      t.timestamps
    end
  end
end
