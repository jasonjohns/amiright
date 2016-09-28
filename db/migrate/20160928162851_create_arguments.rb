class CreateArguments < ActiveRecord::Migration[5.0]
  def change
    create_table :arguments do |t|
      t.text :topic
      t.text :with_who
      t.text :outcome
      t.timestamps
    end
  end
end
