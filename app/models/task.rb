class Task < ApplicationRecord
  belongs_to :todo
  validates :description, presence: true
  validates :description, length: { maximum: 40}

  def done?
    !done_at.blank?
  end
end
