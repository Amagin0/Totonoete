class Question < ApplicationRecord
  belongs_to :user , foreign_key: 'user_id', optional: true
  has_many :evaluations

  def sum_rate
    evaluations.sum(:rate)
  end
end
