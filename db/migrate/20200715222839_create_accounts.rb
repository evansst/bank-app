class CreateAccounts < ActiveRecord::Migration[6.0]
  def change
    create_table :accounts do |t|
      t.integer :number
      t.references :member, null: false, foreign_key: true
      t.references :bank, null: false, foreign_key: true

      t.timestamps
    end
  end
end
