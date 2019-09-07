class AnswersController < ApplicationController
  def index
    @answers = Answer.all

    @ranked_top = Answer.get_1st
  end

  def create
    @answer = Answer.where(user_id: current_user.id).first_or_create
    @answer.ordering = answer_params[:ordering].split(',').map(&:to_i)
    @answer.save!
    redirect_to action: "index"
  end

  def answer_params
    params.require(:answer).permit(:ordering)
  end
end
