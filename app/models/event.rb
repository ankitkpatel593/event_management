class Event < ApplicationRecord
	has_many :user_events
	has_many :users, through:  :user_events
	validates :name, presence: true
	scope :order_by_created_at, -> { order(:created_at) }
end
