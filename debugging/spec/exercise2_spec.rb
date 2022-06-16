require "exercide2"

RSpec.describe "encode method" do
    it "encodes message" do
        result = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
        expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
    end

    it "decodes message" do
        result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
        expect(result).to eq "theswiftfoxjumpedoverthelazydog"
    end
end