class CreateGenetics < ActiveRecord::Migration
  def change
    create_table :genetics do |t|
      t.string :strain
      t.string :native_location
      t.integer :thc_content

      t.timestamps null: false
    end
  end
end
