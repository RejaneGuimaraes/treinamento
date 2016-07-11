class AddColumnLojaIdToQualificacoes < ActiveRecord::Migration
  def change
    add_column :qualificacoes, :loja_id, :integer
  end
end
