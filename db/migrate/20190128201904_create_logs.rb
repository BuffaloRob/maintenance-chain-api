class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.references :item, foreign_key: true
      t.references :category, foreign_key: true
      t.string :notes
      t.string :tools
      t.integer :cost
      t.datetime :date_performed
      t.datetime :date_due

      t.timestamps
    end
  end
end
