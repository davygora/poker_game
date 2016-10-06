class Poker < ActiveRecord::Base

  belongs_to :user

  MAX_PLAYERS = 6

  def subscribed?
    user.count < MAX_PLAYERS
  end
end
