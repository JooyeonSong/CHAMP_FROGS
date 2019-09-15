class HomeController < ApplicationController
  def index
    if user_signed_in?
      @answer = Answer.find_by_user_id(current_user.id)
      logger.debug @answer.inspect
    else
      redirect_to "/users/sign_in"
    end
  end
end
