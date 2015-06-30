class CreateDioceses < ActiveRecord::Migration
  def change
    create_table :dioceses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
