require "lib/fraccion.rb"

describe Fraccion do
	before :each do
		@F = Fraccion.new(3, 2)
		@F1 = Fraccion.new(5, 4)
    end 

    describe "# Almacenamiento de la Fraccion" do
    	it "Se almacena el numerador" do
      		@F.a.should eq(3)
   		end
    	it "Se almacena el denominador" do
      		@F.b.should eq(2)
    	end
  	end

  	describe "# Retorno del numerador y denominador" do
    	it "Retorna el numerador" do
      		@F.num.should eq(3)
   		end
    	it "Retorna el denominador" do
      		@F.denom.should eq(2)
    	end
  	end
  	
  	describe "# Mostrar de la forma: a/b" do
		it "Se muestra la fraccion" do
			@F.to_s.should eq("3/2")
		end
	end
	
	describe "# Mostrar en coma flotante" do
		it "Se muestra la forma flotante" do
			@F.to_f.should eq(1.5)
		end
	end
	
	describe "# Igualdad de fracciones" do
		it "Se comprueba si son iguales las fracciones" do
			res = @F == @F1
			res.should eq(false)	
		end
	end
	
	describe "# Valor absoluto de la fraccion" do
		it "Halla valor absoluto" do
			@F.abs.to_s.should eq("3/2")
		end
	end
	
	describe "# Reciproco de la fraccion" do
		it "Halla el reciproco" do
			@F.reciprocal.to_s.should eq("2/3")
		end
	end

  	
end
