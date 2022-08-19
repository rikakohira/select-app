class List < ApplicationRecord
  has_many :input_lists
  has_many :inputs, through: :input_lists

  validates :group, :code, :code_name, presence: true
end
