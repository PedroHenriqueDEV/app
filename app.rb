system "clear"
$adicionados = []
$comprados = []

puts "Name of your market: "
$nome_loja = gets.chomp

class Adiciona
    def produto()
        puts "Name of product: "
        nome = gets.chomp
        $adicionados.push(nome)
    end
    def preco()
        puts "Value of product: "
        preco = gets.chomp.to_i
        $adicionados.push(preco)
    end
end

class Compra < Adiciona
    def compraproduto()
        puts "Name of product to buy: "
        nomep = gets.chomp
        verificador = $adicionados.include?nomep
        if verificador == true
            $comprados.push(nomep)
            puts "Products bought: #{$comprados}"
        else
            puts "Not product selected!!!"
        end
    end
end

class Mostra < Compra
    def mostraProdu
        puts "Products: #{$adicionados}"
    end
    def mostraCompra
        puts "Bought products: #{$comprados}"
    end
end

loop do
    puts "----#{$nome_loja}----"
    puts "Add products(1)"
    puts "Buy products(2)"
    puts "View products(3)"
    puts "View buys(4)"
    puts "Exit(5)"
    puts "----#{$nome_loja}----"

    esco = gets.chomp.to_i

    if esco == 1
        adiciona = Adiciona.new
        puts "----#{$nome_loja}----"
        adiciona.produto
        adiciona.preco
        puts "Produtos : #{$adicionados}"
        puts "----#{$nome_loja}----"
    elsif esco == 2
        comprar = Compra.new
        puts "----#{$nome_loja}----"
        comprar.compraproduto
        puts "----#{$nome_loja}----"
    elsif esco == 3
        mostra = Mostra.new
        puts "----#{$nome_loja}----"
        mostra.mostraProdu 
        puts "----#{$nome_loja}----"
    elsif esco == 4
        mostra = Mostra.new
        puts "----#{$nome_loja}----"
        mostra.mostraCompra
        puts "----#{$nome_loja}----"
    else
        break
    end

end