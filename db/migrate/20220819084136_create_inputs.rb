class CreateInputs < ActiveRecord::Migration[6.0]
  def change
    create_table :inputs do |t|
      t.integer :shisan_balance,       null: false
      t.integer :fusai_balance,       null: false
      t.references  :user,       null: false, foreign_key: true
      t.timestamps
    end
  end
end
