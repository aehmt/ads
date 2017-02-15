class CreateAds < ActiveRecord::Migration[5.0]
  def change
    create_table :ads do |t|
      t.string :name
      t.references :adgroup, foreign_key: true
      t.string :headline_part1
      t.string :headline_part2
      t.string :description
      t.string :path1
      t.string :path2
      t.string :final_urls

      t.timestamps
    end
  end
end
