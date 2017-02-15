class CreateAdgroups < ActiveRecord::Migration[5.0]
  def change
    create_table :adgroups do |t|
      t.string :name
      t.string :status
      t.integer :bid_amount
      t.references :campaign, foreign_key: true

      t.timestamps
    end
  end
end
