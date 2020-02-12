class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }

  scope :recent, -> { order(created_at: :desc) }

  belongs_to :user
end
