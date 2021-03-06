class Message < ApplicationRecord
  belongs_to :user
  validates :body, presence: true
  scope :custom_display, lambda {
    order(:created_at).last(20)
  }
end
