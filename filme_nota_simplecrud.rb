movies = {
    Gato_de_Botas: 5,
    Shrek: 5,
    Doutor_Estranho: 3,
    Sharknado: 1
  }
  
  puts "Escolha a opção: "
  puts "-- Digite (add) para adicionar filme e nota"
  puts "-- Digite (update) para atualizar a nota"
  puts "-- Digite (display) para mostar os filmes e notas"
  puts "-- Digite (delete) para deletar o filme"
  choice = gets.chomp
  
  case choice
    when "add"
      puts "Nome do filme: "
      title = gets.chomp
      if movies[title.to_sym].nil?
        puts "Adicione nota para o filme: "
        rating = gets.chomp
        movies[title] = rating.to_i
        puts "Filme adicionado!"
      else
        puts "O filme já existe, a nota do filme é #{movies[title.to_sym]}"
      end
    when "update"
        puts "Qual título do filme: "
        title = gets.chomp
        if movies[title.to_sym].nil?
          puts "Não há esse filme no catálogo!"
        else
          puts "Adicione a nova nota para o filme: "
          rating = gets.chomp
          movies[title.to_sym] = rating.to_i
          puts "Nota atualizada!"
        end
    when "display"
      movies.each do |title, rating| 
      puts "#{title}: #{rating}"
    end
    when "delete"
      puts "Nome do filme para deletar: "
      title = gets.chomp
      if movies[title.to_sym].nil?
        puts "Erro, não há o filme!"
      else
        movies.delete(title.to_sym)
        puts "Filme deletado!"
      end
    else
      puts "Erro na digitação de opção!"
    end