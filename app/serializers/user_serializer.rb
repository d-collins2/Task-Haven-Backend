class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username,
  :email, :password_digest, :img_url, :team_members, :tasks, :task_members, :comments, :activitys
  has_many :teams
end
