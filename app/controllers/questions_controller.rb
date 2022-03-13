class QuestionsController < ApplicationController
  def new
    @question = Question.new
    random_theme = Question.pluck(:id).shuffle[0..100]
    @random_1st = Question.find(random_theme).first
    @random_2nd = Question.find(random_theme).second
  end
end
