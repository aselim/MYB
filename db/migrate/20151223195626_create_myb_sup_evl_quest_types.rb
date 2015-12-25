class CreateMybSupEvlQuestTypes < ActiveRecord::Migration
  def change
    create_table :myb_sup_evl_quest_types do |t|
      t.string :Type

      t.timestamps null: false
    end
  end
end
