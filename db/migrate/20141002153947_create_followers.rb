class CreateFollowers < ActiveRecord::Migration
  def change
    create_table :followers do |t|
      t.references :follower, index: true
      t.references :followed, index: true
      t.timestamps
    end
  end
end