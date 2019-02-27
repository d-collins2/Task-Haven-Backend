class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :descritption, :comments, :activity, :due_date, :labels, :sub_tasks, :list
end
