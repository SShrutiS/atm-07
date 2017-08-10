class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :name, null: false  #should not be null
      t.string :category, null: false
      t.decimal :balance, default: 0  # default value 0 and should not be null
      t.integer :flags, default: 0
      t.boolean :is_suspended, default: false, null: false
      
      t.timestamps
    end
    
    add_index :accounts, [:name], unique: true
  end
end
