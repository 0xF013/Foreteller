class CreateForetellings < ActiveRecord::Migration
  def self.up
    create_table :foretellings do |t|
      t.integer :user_id
      t.string :content
      t.datetime :due_date

      t.timestamps
    end
  end

  def self.down
    drop_table :foretellings
  end
end
