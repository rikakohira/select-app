class CreateInputLists < ActiveRecord::Migration[6.0]
  def change
    create_table :input_lists do |t|
      t.references :input, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true
      t.timestamps
    end
  end
end
