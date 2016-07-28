class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :empname
      t.string :empdept

      t.timestamps null: false
    end
  end
end
