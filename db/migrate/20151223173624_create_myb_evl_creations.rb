class CreateMybEvlCreations < ActiveRecord::Migration
  def change
    create_table :myb_evl_creations do |t|
      t.string :Name
      t.integer :Author_id
      t.string :Target_User
      t.string :Serial
      t.date :Schedule
      t.integer :Eval_Time_Min

      t.timestamps null: false
    end
  end
end
