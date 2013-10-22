=begin
**********************************************************
* Autores: 
       Teno González Dos Santos
       Albano José Yanes Reyes
* Fecha: 18/10/2013
* Asignatura: Lenguejes y Paradigmas de Programación
* Tercero de Grado en Ingeniería Informática
* Universidad de la Laguna
*
* Practica 06: Desarrollo de una clase fraccion utilizando 
*  el desarrollo dirigido por pruebas 
***********************************************************
=end

#! /usr/bin/ruby

class Fraccion
	attr_reader :a, :b #a: numerador, b: denominador
	def initialize(a, b)
		#comprobamos que los datos de entradas sean numericos
		raise unless a.is_a?(Numeric)
		raise unless b.is_a?(Numeric)
		#comprobamos que el dominador no sea cero 
		raise unless (b != 0)
		#inicializamos las variables
		@a, @b = a, b
	end

	

end