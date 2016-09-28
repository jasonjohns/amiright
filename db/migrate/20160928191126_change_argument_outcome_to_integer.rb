class ChangeArgumentOutcomeToInteger < ActiveRecord::Migration[5.0]
  def change
    change_column :arguments, :outcome, :integer
  end
end
