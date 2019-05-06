class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :due_date, :labels, :list_id, :list

  def list_id
    object.list.id
  end

  def list
    object.list
  end
end
