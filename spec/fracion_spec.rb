require "lib/fraccion.rb"

describe Fraccion do
	before :each do
		@F = Fraccion.new(5/29)
end 

describe "# Almacenamiento de la faccion" do
	it "Se almacena correctamente el numerador"
	   @f.a.should eq(5)
	end
	it "Se almacena correctamente el denominador"
		@f.b.should eq(29)
	end
end

