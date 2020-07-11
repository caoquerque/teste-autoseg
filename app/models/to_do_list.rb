class ToDoList < ApplicationRecord
  belongs_to :user
  has_many :taks, dependent: :destroy
  has_many :favourite_list
end
