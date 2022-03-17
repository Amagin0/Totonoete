class HomesController < ApplicationController
  def top
    @users = User.all
    @questions = Question.all
    random_theme = Question.pluck(:id).shuffle[0..1]
    @random_1st = Question.find(random_theme).first
    @random_2nd = Question.find(random_theme).second
    @popular_questions = Question.where(created_at: Time.current.all_month).limit(3).order(raty: :desc)
    @new_questions = Question.limit(3).order(created_at: :desc)
  end

  def about
  end
end
