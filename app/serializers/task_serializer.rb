class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :comments, :activity, :due_date, :labels, :sub_tasks, :list
end
