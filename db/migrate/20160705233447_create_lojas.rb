class CreateLojas < ActiveRecord::Migration
  def change
    create_table :lojas do |t|
      t.string :nome

      t.timestamps null: false
    end
  end
end
