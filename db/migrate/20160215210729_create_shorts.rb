class CreateShorts < ActiveRecord::Migration
  def change
    create_table :shorts do |t|
      t.string :long
      t.string :short

      t.timestamps null: false
    end
  end
end
