require 'password_checker'

RSpec.describe PasswordChecker do
    it "returns true when a string with length of 10 is passed" do
        password_checker = PasswordChecker.new
        expect(password_checker.check("123456789")).to eq true
    end

    it "raises an error if an empty string is passed" do
        password_checker = PasswordChecker.new
        expect{password_checker.check("")}.to raise_error "Invalid password, must be 8+ characters."
    end

    it "raises an error if a string with less than 8 char passed" do
        password_checker = PasswordChecker.new
        expect{password_checker.check("123")}.to raise_error "Invalid password, must be 8+ characters."
    end
end