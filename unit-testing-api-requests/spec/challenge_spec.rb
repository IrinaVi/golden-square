require "challenge"

RSpec.describe CatFacts do
    it "returns a cat fact" do
        fake_facts_web = double :fake_facts
        expect(fake_facts_web).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return('{"fact":"Ancient Egyptian family members shaved their eyebrows in mourning when the family cat died.","length":91}')
        cat_facts = CatFacts.new(fake_facts_web)
        expect(cat_facts.provide).to eq "Cat fact: Ancient Egyptian family members shaved their eyebrows in mourning when the family cat died."
    end
end