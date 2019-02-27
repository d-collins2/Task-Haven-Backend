class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }


  has_many :team_members
  has_many :teams, through: :team_members
  has_many :task_members
  has_many :tasks, through: :task_members
  has_many :comments
  has_many :activitys
end
