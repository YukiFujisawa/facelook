class Feed < ApplicationRecord
  validates :title, length: { in: 1..30}
  validates :content, length: { in: 1..140}
  belongs_to :user
  has_many :favos, dependent: :destroy
  has_many :favo_users, through: :favos, source: :user
end
