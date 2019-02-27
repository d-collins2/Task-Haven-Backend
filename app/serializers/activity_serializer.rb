class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :task_name, :user_id, :task_id
end
