class Todo < ApplicationRecord
  attr_accessor :public
  belongs_to :user
  has_many :tasks
end
