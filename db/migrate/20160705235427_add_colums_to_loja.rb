class AddColumsToLoja < ActiveRecord::Migration
  def change
    add_column :lojas, :endereco, :string
    add_column :lojas, :especialidade, :string, limit: 40
  end
end
