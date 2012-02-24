class CreateForetellingVotes < ActiveRecord::Migration
  def self.up
    create_table :foretelling_votes do |t|
      t.boolean :is_positive
      t.string :type
      t.integer :foretelling_id
      t.integer :user_id
      t.string :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :foretelling_votes
  end
end
