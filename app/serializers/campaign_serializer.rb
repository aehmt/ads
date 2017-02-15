class CampaignSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :budget, :advertising_channel_type
  has_many :adgroups, include_nested_associations: true
end
