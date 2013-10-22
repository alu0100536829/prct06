require "lib/fraccion.rb"

describe Fraccion do
	before :each do
		@F = Fraccion.new(5, 29)
    end 

    describe "# almacenamiento de las coordenadas" do
    	it "Se almacena correctamente la coordenada X" do
      		@F.a.should eq(5)
   		end
    	it "Se almacena correctamente la coordenada Y" do
      		@p1.b.should eq(29)
    	end
  	end

end