class Prato < ActiveRecord::Base
	validates_presence_of :nome, message: " deve ser preenchido."

	has_and_belongs_to_many :lojas
	has_one :receita
end
