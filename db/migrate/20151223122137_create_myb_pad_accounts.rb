class CreateMybPadAccounts < ActiveRecord::Migration
  def change
    create_table :myb_pad_accounts do |t|
      t.string :Username
      t.string :Password

      t.timestamps null: false
    end
  end
end
