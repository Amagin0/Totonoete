class QuestionsController < ApplicationController
  def new
    @question = Question.new
    random = Question.pluck(:id).shuffle[0..1]
    random_theme = Question.find(random).pluck(:odai)
    @random_1st = random_theme.first
    @random_2nd = random_theme.second
  end

  def show
    @question = Question.find(params[:id])
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      redirect_to question_path(@question)
    else
      render 'new'
    end
  end

  private

  def question_params
    params.require(:question).permit(:q_title, :q_description)
  end
end
