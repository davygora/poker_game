class PokersController < ApplicationController

  before_filter :authorize

  def index
    @unsubscribe_pokers = Poker.where("subscribe_at IS NULL")
    @subscribe_pokers = Poker.where("subscribe_at IS NOT NULL")
  end

  def subscribe
    if @unsubscribe_pokers.subscribed?
      Poker.update_all(subscribe_at: Time.now, id: params[:poker_ids])
      redirect_to pokers_path
    else
      redirect_to root_path, notice: 'Вы не можете подписаться на эту игру!'
  end
end