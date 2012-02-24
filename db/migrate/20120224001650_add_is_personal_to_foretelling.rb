class AddIsPersonalToForetelling < ActiveRecord::Migration
  def change
    add_column :foretellings, :is_personal, :boolean

  end
end
