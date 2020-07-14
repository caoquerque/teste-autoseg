class Todo < ApplicationRecord
  belongs_to :user
  has_many :tasks, dependent: :destroy
  has_many :favourite

  def public?
    self.public
  end
end
