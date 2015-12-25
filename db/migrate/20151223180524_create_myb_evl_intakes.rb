class CreateMybEvlIntakes < ActiveRecord::Migration
  def change
    create_table :myb_evl_intakes do |t|
      t.integer :Solver_id
      t.datetime :Start_time
      t.integer :Duration_min
      t.float :Result
      t.string :Evl_id

      t.timestamps null: false
    end
  end
end
