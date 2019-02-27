class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :lists
  belongs_to :team
end
