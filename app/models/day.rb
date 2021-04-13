class Day < ApplicationRecord
  has_many :tickers#, class_name: "ticker", foreign_key: "reference_id"
end
