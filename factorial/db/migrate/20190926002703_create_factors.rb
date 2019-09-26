class CreateFactors < ActiveRecord::Migration[5.2]
  def change
    create_table :factors do |t|
      t.integer :input
      t.integer :result
      t.timestamps
    end
  end
end
