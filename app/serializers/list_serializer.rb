class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :board, :tasks

  def tasks
    object.tasks
  end
end
