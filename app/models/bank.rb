class Bank < ApplicationRecord
  has_many :accounts
  has_many :members, through: :accounts
end
