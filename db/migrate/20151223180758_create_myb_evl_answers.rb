class CreateMybEvlAnswers < ActiveRecord::Migration
  def change
    create_table :myb_evl_answers do |t|
      t.string :Evl_id
      t.string :Question_id
      t.string :Answer
      t.integer :Intake_id

      t.timestamps null: false
    end
  end
end
