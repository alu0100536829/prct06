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

require "./gcd.rb"

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
		 f= Fraccion.new(@a.abs, @b.abs)
	end

	def reciprocal
		f= Fraccion.new(@b, @a)
	end
	def reducir
 		k = gcd(@a, @b)
        a = @a / k
        b = @b / k
        f = Fraccion.new(a, b)
	end
	
	def + fraction
		f1 = fraction.reducir
		f = reducir 
		if f.denom == f1.denom
			return ft = Fraccion.new(f.num + f1.num, f.denom)
		else
			num = (f.num * f1.denom) + (f1.num * f.denom)
			den = f.denom * f1.denom
			return ft = Fraccion.new(num, den)
		end

	end

	def - fraction
		f1 = fraction.reducir
		f = reducir 
		if f.denom == f1.denom
			return ft = Fraccion.new(f.num - f1.num, f.denom)
		else
			num = (f.num * f1.denom) - (f1.num * f.denom)
			den = f.denom * f1.denom
			return ft = Fraccion.new(num, den)
		end

	end

	def * fraction
		f1 = fraction.reducir
		f = reducir 
		num = f.num * f1.num
		den = f.denom * f1.denom
		return ft = Fraccion.new(num, denom)
	end

	def / fraction
		f1 = fraction.reducir
		f = reducir 
		num = f.num * f1.denom
		den = f.denom * f1.num
		return ft = Fraccion.new(num, den)
	end
	def % fraction
		
	end


end

