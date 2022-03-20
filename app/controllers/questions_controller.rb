class QuestionsController < ApplicationController
  before_action :require_login, only: %i[new show]

  def new
    @question = Question.new
    random = Theme.pluck(:id).shuffle[0..1]
    random_theme = Theme.find(random).pluck(:q_theme)
    @random_1st = random_theme.first
    @random_2nd = random_theme.second
  end

  def index
    @questions = Question.all
  end

  def show
    @question = Question.find(params[:id])
    @user =
    @evaluation = Evaluation.all
    if logged_in?
      @evaluation = evaluation(current_user.id, @question.id)
    end
  end

  def create
    @question = Question.new(question_params)
    @question.user_id = current_user.id
    if @question.save
      redirect_to question_path(@question)
    else
      render 'new'
    end
  end

  def evaluation(user_id, question_id)
    _evaluation =
      if Evaluation.exists?(user_id: user_id, question_id: question_id)
         Evaluation.find_by(user_id: user_id, question_id: question_id)
      else
         Evaluation.new
      end
  end

  private

  def question_params
    params.require(:question).permit(:q_title, :q_description)
  end
end
