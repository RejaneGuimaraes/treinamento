class LojasController < ApplicationController
		def index
			@lojas = Loja.order :nome
			respond_to do |format|
			format.html {render "index"}
			format.json {render json: @lojas}
			format.xml {render xml: @lojas}
		    end
		end	

		def show
			@lojas = Loja.find(params[:id])
		end	

		def destroy
			@lojas = Loja.find(params[:id])
			@lojas.destroy
			redirect_to action: 'index'
		end	

		def new
			@lojas = Loja.new
			@lojas.nome = "Alguma coisa"
			@lojas.especialidade = "Massas"
		end	

		def create
			@lojas = Loja.new loja_params
			if @lojas.save
				redirect_to action: 'show', id: @lojas
			else
				render action: "new"
			end		
		end	

		def edit
			@lojas = Loja.find(params[:id])			
		end	

		def update
			@lojas = Loja.find(params[:id])
			if @lojas.update_attributes(loja_params)
			    redirect_to(action: 'show', id: @lojas)
			else
			    render action: "edit"
			end    
		end	

		private
		def loja_params
			params.require(:loja).permit(:nome, :endereco, :especialidade)
		end	

		

end
