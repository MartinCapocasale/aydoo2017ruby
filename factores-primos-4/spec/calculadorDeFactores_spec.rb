require 'rspec' 
require_relative '../model/calculadorDeFactores'

  describe "CalculadorDeFactores" do


  let(:calculadorDeFactores) do
  	sorter1 = double('sorter', sort: [1])
  	CalculadorDeFactores.new(sorter1)
  end

   it 'factores primos de 360 deberia ser [2,2,2,3,3,5]' do
    seteo = "1"
    valor_obtenido = calculadorDeFactores.program(360)
    expect(seteo).to eq(valor_obtenido)
   end

   it 'factores primos de 90 deberia ser [2,3,3,5]' do
    seteo = "1"
    valor_obtenido = calculadorDeFactores.program(90)
    expect(seteo).to eq(valor_obtenido)
   end


   it 'factores primos de 12 deberia ser [2,3,3]' do
    seteo = "1"
    valor_obtenido = calculadorDeFactores.program(12)
    expect(seteo).to eq(valor_obtenido)
   end


 end