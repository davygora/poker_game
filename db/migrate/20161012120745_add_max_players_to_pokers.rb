class AddMaxPlayersToPokers < ActiveRecord::Migration
  def change
    add_column :pokers, :max_players, :integer
  end
end
