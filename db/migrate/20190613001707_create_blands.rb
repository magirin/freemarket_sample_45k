class CreateBlands < ActiveRecord::Migration[5.0]
  def change
    create_table :blands do |t|

      t.timestamps
    end
  end
end
