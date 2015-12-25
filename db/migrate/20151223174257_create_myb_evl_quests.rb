class CreateMybEvlQuests < ActiveRecord::Migration
  def change
    create_table :myb_evl_quests do |t|
      t.integer :Type
      t.string :Question
      t.string :Answer
      t.string :Evl_id
      t.string :Serial

      t.timestamps null: false
    end
  end
end
