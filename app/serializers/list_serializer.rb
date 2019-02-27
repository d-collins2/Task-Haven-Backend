class ListSerializer < ActiveModel::Serializer
  attributes :id, :name, :board, :tasks
end
