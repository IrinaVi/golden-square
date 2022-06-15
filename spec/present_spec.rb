require "present"

RSpec.describe Present do

    it "not fails" do
        present = Present.new
        present.wrap("hello")
        expect(present.unwrap()).to eq "hello"
    end

    it "fails if we unrap without wrapping first" do
        present = Present.new
        expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end
    
    it "wrap doesn't fail when we pass an argument" do
        present = Present.new
        result = present.wrap("test")
        expect(result).to eq "test"
    end

    it "fails when we wrap twice" do
        present = Present.new
        present.wrap(5)
        expect {present.wrap(4)}.to raise_error "A contents has already been wrapped."
        expect(present.unwrap).to eq 5
    end    

end