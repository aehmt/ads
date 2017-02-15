class NameSerializer < ActiveModel::Serializer
  attributes :id, :status, :budget, :advertising_channel_type
end
