json.array!(@qualificacoes) do |qualificacao|
  json.extract! qualificacao, :id, :cliente_id, :loja_id, :nota, :integer, :valor_gasto
  json.url qualificacao_url(qualificacao, format: :json)
end
