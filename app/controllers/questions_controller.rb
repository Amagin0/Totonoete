class QuestionsController < ApplicationController
  def new
    @question = Question.new
    @random = Question.order("RAND()").limit(1).map{|v| [v.odai]}
end
