class HomeController < ApplicationController
  def index
    unless user_signed_in?
      redirect_to "/users/sign_in"
    end
  end

  def save_answer
    # Answer.create_or_update!(params[:user], params[:ordering])
    # render json: { result: :success }
  end
end
