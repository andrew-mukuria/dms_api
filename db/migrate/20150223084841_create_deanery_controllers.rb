class CreateDeaneryControllers < ActiveRecord::Migration
  def change
    create_table :deanery_controllers do |t|

      t.timestamps null: false
    end
  end
end
