require 'sinatra'
require_relative './model/ordenarAscendente'
require_relative './model/ordenarDescendente'
require_relative './model/calculadorDeFactores'

get '/primos' do
  begin
    CalculadorDeFactores.new(
      OrdenarDescendente.new
    ).program(params['x'])
  rescue
    status 400
  end
end

post '/primos' do
  begin
    CalculadorDeFactores.new(
      OrdenarAscendente.new
    ).program(params['x'])
  rescue
    status 400
  end
end
