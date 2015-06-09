class CreateArchdioceses < ActiveRecord::Migration
  def change
    create_table :archdioceses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
