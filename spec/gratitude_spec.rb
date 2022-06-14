require 'gratitudes'

RSpec.describe Gratitudes do
    it "creates an empty instance variable array" do
        instance = Gratitudes.new
        expect(instance.format).to eq "Be grateful for: "
    end

    it "adds argument to instance array" do
        instance = Gratitudes.new
        instance.add("hello")
        expect(instance.format).to eq "Be grateful for: hello"
    end

    context "testing adding multiple arguments" do
        instance = Gratitudes.new
        instance.add("hello")
        it "adds multiple arguments to array" do
        
            expect(instance.format).to eq "Be grateful for: hello"
        end

        it "random test" do
            instance.add("world")
            expect(instance.format).to eq "Be grateful for: hello, world"
        end
    end
end