class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :option_id, null: false
    end
  end
end
