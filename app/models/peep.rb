class Peep < ApplicationRecord
  validates :body, presence: true
end
