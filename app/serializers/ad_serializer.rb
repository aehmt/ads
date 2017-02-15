class AdSerializer < ActiveModel::Serializer
  attributes :id, :name, :headline_part1, :headline_part2, :description, :path1, :path2, :final_urls
  has_one :adgroup
end
