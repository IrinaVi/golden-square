require "password_checker"

describe PasswordChecker do
    it "the function returns true when 8 charachters given" do
        password_checker = PasswordChecker.new
        expect(password_checker.check("12345678")).to eq true
    end

    context "failing tests" do
        password_checker = PasswordChecker.new
        it "function returns false when an empty string given" do
            expect { password_checker.check("") }.to raise_error "Invalid password, must be 8+ charachters."
        end

        it "function returns an error if a string shorter than 8 given" do
            expect { password_checker.check("hello")}.to raise_error "Invalid password, must be 8+ charachters."
        end
    end
end    