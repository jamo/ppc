class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :meeting_id
      t.integer :user_id
      t.integer :state

      t.timestamps
    end
  end
end
