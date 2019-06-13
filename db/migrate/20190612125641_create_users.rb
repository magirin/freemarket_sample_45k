class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
    t.string :kanji_name, null: false, :limit => 70 
    t.string :kana_name, null: false, :limit => 70 
    t.string :nickname, null: false, :limit => 20 
    t.integer :birth_of_date, null: false 
    t.integer :password, null: false 
    t.string :prefecture, null: false 
    t.string :address, null: false 
    t.string :profile, null: false 
    t.string :mail,  null: false, unique: true 
    t.integer :credit_number, unique: true,null: false 
    t.integer :credit_security_number,  :limit => 4, null: false 
    t.integer :credit_expire_date, null: false 
    t.string :phone_number, unique: true, :limit => 255, null: false
    t.string :timestamps
    end
  end
end
