class CratePratosLojasJoinTable < ActiveRecord::Migration
  def change
  	create_table :pratos_lojas, id: false do |t|
  			t.integer :prato_id
  			t.integer :loja_id
  		end	
  end
end
