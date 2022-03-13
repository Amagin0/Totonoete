class HomesController < ApplicationController
  def top
    @user = User.all
    @popular_questions = Question.where(created_at: Time.current.all_month).limit(3).order(raty: :desc)
    @new_questions = Question.limit(5).order(created_at: :desc)
  end

  def about
  end
end
