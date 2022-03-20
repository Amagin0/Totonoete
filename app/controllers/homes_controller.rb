class HomesController < ApplicationController
  def top
    @users = User.all
    @questions = Question.all
    @new_questions = Question.order(created_at: :desc).limit(3)
    @popular_questions = Question.find(Evaluation.group(:question_id).having('sum(rate) >= ?', 5).where(created_at: Time.current.all_month).shuffle[0..2].pluck("question_id"))
    # sum_rate_all = ActiveRecord::Base.connection.execute('select id, question_id, sum(rate) from evaluations group by question_id having sum(rate) >= 1000 order by random() limit 3')
    # sum_rate = Evaluation.group(:question_id).having('sum(rate) >= ?', 1000).shuffle[0..2]
    @legend_questions = Question.find(Evaluation.group(:question_id).having('sum(rate) >= ?', 10).shuffle[0..2].pluck("question_id"))
  end

  def about
  end
end