namespace :development do
  desc "Executando o SETUP de desenvolvimento"

  task setup: :environment do
    puts "APAGANDO o banco de dados...   #{%x(rake db:drop)}"
    puts "CRIANDO o banco de dados...   #{%x(rake db:migrate)}"
    puts %x(rake db:seed)

  end
end
