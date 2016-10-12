class AddUserToPoker < ActiveRecord::Migration
  def change
    add_reference :pokers, :user, index: true, foreign_key: true
  end
end
