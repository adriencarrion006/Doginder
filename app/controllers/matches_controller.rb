class MatchesController < ApplicationController
  def create
    match = (params[:match] == "true")
    @match = Match.new
    @match.user_id = current_user.id
    @match.dog_id = params[:dog_id]
    @match.match = match
    if @match.save
      if match
        redirect_to dog_path(params[:dog_id])
      else
        redirect_to dogs_path
      end
    else
    redirect_to dogs_path
   end

  end
end
