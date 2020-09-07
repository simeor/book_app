class Book < ApplicationRecord
  validates :name, presence: true
  validates :auther, presence: true
  validates :rating, inclusion: {in: 1..5}
end
