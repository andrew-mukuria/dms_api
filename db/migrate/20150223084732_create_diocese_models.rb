class CreateDioceseModels < ActiveRecord::Migration
  def change
    create_table :diocese_models do |t|

      t.timestamps null: false
    end
  end
end
