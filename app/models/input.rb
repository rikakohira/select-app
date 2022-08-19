class Input < ApplicationRecord
  belongs_to :user, optional: true
  has_many :input_lists
  has_many :lists, through: :input_lists

  validates :shisan_balance, :fusai_balance ,presence: true
end
