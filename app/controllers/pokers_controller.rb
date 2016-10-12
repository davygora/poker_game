class PokersController < ApplicationController

  before_filter :authorize

  def index
    @unsubscribe_pokers = Poker.where("subscribe_at IS NULL")
    @subscribe_pokers = Poker.where("subscribe_at IS NOT NULL")
  end

  def subscribe
    @pokers = Poker.where(id: params[:poker_ids])
    @pokers.update_all(subscribe_at: Time.now)
      redirect_to pokers_path
  end
end