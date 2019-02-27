class Task < ApplicationRecord
  belongs_to :list
  has_many :sub_tasks
  has_many :task_members
  has_many :users, through: :task_members
  has_many :comments
  has_many :activitys
end
