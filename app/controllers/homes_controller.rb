class HomesController < ApplicationController
  def top
    @users = User.all
    @questions = Question.all
    random_theme = Question.pluck(:id).shuffle[0..1]
    @random_1st = Question.find(random_theme).first
    @random_2nd = Question.find(random_theme).second
    question_list = Question.limit(3).order(created_at: :desc)
    @new_questions = question_list
    @popular_questions = question_list.shuffle[0..5]
    # @legend_questions = question_list.left_joins(:evaluations).limit(3).where(rate: 1000..)

  end

  def about
  end
end
