class TeamSerializer < ActiveModel::Serializer
  attributes :id, :name, :members_team, :boards
  has_many :users

  def members_team
    members = []
      object.team_members.each{|member| members << User.all.find(member.user_id)}
    members
  end
end
