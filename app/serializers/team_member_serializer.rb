class TeamMemberSerializer < ActiveModel::Serializer
  attributes :admin, :user_id, :team_id
end
