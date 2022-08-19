class Input < ApplicationRecord
  belongs_to :user, optional: true
  validates :shisan_balance, :fusai_balance ,presence: true
end
