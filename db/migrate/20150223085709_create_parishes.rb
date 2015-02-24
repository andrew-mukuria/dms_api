class CreateParishes < ActiveRecord::Migration
  def change
    create_table :parishes do |t|

      t.timestamps null: false
    end
  end
end
