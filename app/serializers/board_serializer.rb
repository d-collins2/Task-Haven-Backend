class BoardSerializer < ActiveModel::Serializer
  attributes :id, :name, :lists
  has_many :lists
  belongs_to :team

  def lists
    object.lists
  end


end
