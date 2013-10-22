=begin
**********************************************************
* Autores: 
       Teno González Dos Santos
       Albano José Yanes Reyes
* Fecha: 23/10/2013
* Asignatura: Lenguejes y Paradigmas de Programación
* Tercero de Grado en Ingeniería Informática
* Universidad de la Laguna
*
* Practica 06: Desarrollo de una clase fraccion utilizando 
*  el desarrollo dirigido por pruebas 
***********************************************************
=end



class Fraccion
	attr_reader :a, :b #a: numerador, b: denominador
	def initialize(a,b)
		#comprobamos que los datos de entradas sean numericos
		raise unless a.is_a?(Numeric)
		raise unless b.is_a?(Numeric)
		#comprobamos que el dominador no sea cero 
		raise unless (b != 0)
		#inicializamos las variables
		 @a, @b = a, b
	end
	#formateo de la salida (a/b)
	def to_s
		"#{@a}/#{@b}"
	end

	#metodo que retorna el numerador 
	def num
		return @a
	end
	#metedo que retorna el denominador 
	def denom
		return @b
	end
	#Fraccion en modo flotante
	def to_f
		@a.to_f / @b.to_f #conversion de tipo a flotante mediante to_f
	end

	def == fraction
		if(@a == fraction.a) && (@b == fraction.b)
			return true 
		else 
			return false
		end
	end

	def abs
		"#{@a.abs}/#{@b.abs}"
	end

	def reciprocal
		"#{@b}/#{@a}"
	end

	def - fraccion
		fraccion.a = fraccion.a * -1
	end 

end

@f = Fraccion.new(-5, 15)
@f1 = Fraccion.new(5, 25)
puts @f.to_s
puts @f.num
puts @f.denom
puts @f.to_f
puts @f.abs
puts @f == @f1
puts @f.reciprocal
-@f
