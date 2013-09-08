class CreateTargets < ActiveRecord::Migration
  def change
    create_table :targets do |t|
      t.string :grade
      t.decimal :year, precision: 2, scale: 0

      t.timestamps
    end
  end
end
