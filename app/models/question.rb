class Question < ApplicationRecord
  belongs_to :user, foreign_key: 'user_id', optional: true
  has_many :evaluations
  has_many :themes

  def sum_rate
    evaluations.sum(:rate)
  end

end
