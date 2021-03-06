class Qualificacao < ActiveRecord::Base
	validates_presence_of :nota, message: " deve ser preenchida."
	validates_presence_of :valor_gasto, message: " deve ser preenchido."
	validates_numericality_of :nota, greather_than_or_equals_to: 0, less_than_or_equals_to: 10, message: " deve ser um número entre 0 e 10."
	validates_numericality_of :valor_gasto, greather_than: 0, message: " deve ser maior do que 0."
	validates_presence_of :cliente, :loja
	validates_associated :cliente, :loja

	belongs_to :loja
	belongs_to :cliente

end
