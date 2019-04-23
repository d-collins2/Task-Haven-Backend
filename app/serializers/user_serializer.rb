class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :password_digest, :boards, :first_name, :last_name,
  :img_url, :teams_info, :comments, :activitys, :teams, :full_name

  def teams
    object.teams
  end

  def full_name
    object.first_name + ' ' + object.last_name
  end

  def boards
    boards = []
    object.teams.each do |team|
      team.boards.each{|board| boards << board}
    end
    boards
  end

  def teams_info
    hash = {}
    object.teams.each do |team|
      boards = team.boards
      members = {}
      array = []
      team.team_members.each{|member| array << User.all.find(member.user_id)}
      team.boards.each do |board|
        lists = {}
        board.lists.each do |list|
          tasks = {}
          tasks[list.id] = list.tasks
          members['tasks'] = tasks
        end
        lists[board.id] = board.lists
        members["lists"] = lists
      end
      members["team_members"] = array
      members["boards"] = boards

      hash[team.id] =  members
    end
    hash
  end

end
