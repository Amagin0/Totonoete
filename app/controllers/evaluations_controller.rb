class EvaluationsController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @evaluation = Evaluation.new(evaluation_params)
    @evaluation.question_id = @question.id
    @evaluation.user_id = current_user.id

    if @evaluation.save
      redirect_to questions_path
    else
      redirect_to question_path(@question), alert: 'Error：1以上で評価してください'
    end
  end

  private

  def evaluation_params
    params.require(:evaluation).permit(:question_id, :rate, :user_id)
  end
end
