class CreateDeaneries < ActiveRecord::Migration
  def change
    create_table :deaneries do |t|

      t.timestamps null: false
    end
  end
end
