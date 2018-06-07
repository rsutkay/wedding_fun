class AddVoteCountToDrinks < ActiveRecord::Migration[5.0]
  def change
    add_column :drinks, :votes_count, :integer
  end
end
