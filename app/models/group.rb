class Group < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :expenses

  def total_amount
    expenses.includes(:groups).sum(:amount)
  end
end
