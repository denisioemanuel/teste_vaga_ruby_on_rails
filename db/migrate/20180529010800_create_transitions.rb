class CreateTransitions < ActiveRecord::Migration[5.2]
  def change
    create_table :transitions do |t|
      t.time :date
      t.float :value
      t.integer :type
      t.references :user, foreign_key: true
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
