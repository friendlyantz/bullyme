class Habit < ApplicationRecord
  belongs_to :user
  has_many :tickers

  validates :name, presence: true
end
