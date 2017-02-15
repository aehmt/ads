class AdgroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :bid_amount
  has_one :campaign
  has_many :ads, include_nested_associations: true
end
