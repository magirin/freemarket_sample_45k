class CreateCreditCards < ActiveRecord::Migration[5.0]
  def change
    create_table :credit_cards do |t|
      t.integer :credit_number, unique: true,null: false 
      t.integer :credit_security_number,  limit: 4, null: false 
      t.integer :credit_expire_date, null: false 
      t.references :user, null: false
      t.timestamps
    end
  end
end
