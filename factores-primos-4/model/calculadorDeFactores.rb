class CalculadorDeFactores
  attr_accessor :ordenamiento

  def initialize(ordenamiento)
    self.ordenamiento = ordenamiento
    
  end

  def es_valido?(number)
    Integer(number) or raise Exception, 'El valor introducido no es un numero'
  end

  def program(numero)
    numero = es_valido?(numero)
    factor = calcular(numero)
    factor = ordenamiento.sort(factor)
    formateo(factor)
  end

  
  def formateo(factor)
    factor.join(',')
  end

  def calcular(numero)
   factors = Array.new
    if numero == 1
      factors << numero
      return factors
    else
      i = 2
      num = numero
      while i <= num do 
        while num % i == 0
          num = num/i
          factors << i
        end
        i += 1
      end
      return factors
    end
  end

end