class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :team_members, :boards
  has_many :users
end
