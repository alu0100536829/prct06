require "lib/fraccion.rb"

describe Fraccion do
	before :each do
		@F = Fraccion.new(5, 15)
		@F1 = Fraccion.new(5, 25)
    end 

    describe "# Alacenamiento de la Fraccion" do
    	it "Se almacena el numerador" do
      		@F.a.should eq(5)
   		end
    	it "Se almacena el denominador" do
      		@F.b.should eq(29)
    	end
  	end

  	describe "# Retorno del numerador y denominador" do
    	it "Retorna el numerador" do
      		@F.num.should eq(5)
   		end
    	it "Retorna el denominador" do
      		@F.denom.should eq(29)
    	end
  	end

  	
end