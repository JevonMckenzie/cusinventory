class Member < ApplicationRecord
  has_many :orders
  #has_many :users
  has_many :items, through: :orders

  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
end
