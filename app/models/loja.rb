class Loja < ActiveRecord::Base
		validates_uniqueness_of :nome
		validates_presence_of :nome, :especialidade
		validates_size_of :especialidade, maximum: 40
		validate :primeira_letra_deve_ser_maiuscula

		has_many :qualificacoes
		
		def valor_total_gasto
			self.qualificacoes.sum(:valor_gasto)
		end
		
		private 
		def primeira_letra_deve_ser_maiuscula
				errors.add("nome","primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
        end
end


