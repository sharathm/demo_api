class SessionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :cost, :start_time, :stop_time
end
