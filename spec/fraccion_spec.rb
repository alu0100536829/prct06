require "lib/fraccion.rb"

describe Fraccion do
	before :each do
		@F = Fraccion.new(5, 29)
    end 

    describe "# Alacenamiento de la Fraccion" do
    	it "Se almacena el numerador" do
      		@F.a.should eq(5)
   		end
    	it "Se almacena el denominador" do
      		@p1.b.should eq(29)
    	end
  	end

end