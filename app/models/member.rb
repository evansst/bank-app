class Member < ApplicationRecord
  has_many :accounts
  has_many :banks, through: :accounts

  def job
    Faker::Job.title
  end
end
