class Theme < ApplicationRecord
  belongs_to :question, foreign_key: 'question_id', optional: true
end
