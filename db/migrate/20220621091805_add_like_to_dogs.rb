class AddLikeToDogs < ActiveRecord::Migration[6.1]
  def change
    add_column :dogs, :like, :boolean
  end
end
