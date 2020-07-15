class Account < ApplicationRecord
  belongs_to :member
  belongs_to :bank
end
