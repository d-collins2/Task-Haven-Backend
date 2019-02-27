class CommentSerializer < ActiveModel::Serializer
  attributes :id, :message, :user_id, :task_id
end
