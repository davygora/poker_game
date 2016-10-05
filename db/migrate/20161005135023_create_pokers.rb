class CreatePokers < ActiveRecord::Migration
  def change
    create_table :pokers do |t|
      t.string :name
      t.datetime :start_time
      t.datetime :subscribe_at

      t.timestamps null: false
    end
  end
end
