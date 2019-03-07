class ProdutosController < ApplicationController
  def index
    @produtos = Produto.order :quantidade
    @produtos_baratos = Produto.order(preco: :asc).limit 5
    #puts @produtos_baratos.inspect
  end
  
  def create
    produto = params.require(:produto).permit(:nome, :preco, :quantidade, :descricao)
    puts "******************"
    puts produto.inspect
    Produto.create produto
    redirect_to root_path
  end

  def destroy
    id = params[:id]
    Produto.destroy id
    redirect_to root_path
  end

end
