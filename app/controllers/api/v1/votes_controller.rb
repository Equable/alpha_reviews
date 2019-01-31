class Api::V1::VotesController < ApplicationController
  protect_from_forgery unless: -> { request.format.json? }

  def create
    vote = Vote.new(vote_params)
    vote.user_id = current_user.id

    if vote.save!
      flash[:notice] = "Vote recorded!"
    else
      render json: {error: vote.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    
    vote = Vote.find(params[:id])
    if vote.destroy
      flash[:notice] = "Vote deleted!"
    else
      render json: {error: vote.errors.full_messages}, status: :unprocessable_entity
    end
  end

  private
  def vote_params
    params.require(:vote).permit(:user_id, :review_id, :status)
  end
end
