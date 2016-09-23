# frozen_string_literal: true
require 'spec_helper'

RSpec.describe SnakeCaser do
  describe ".lower_snake_case" do
    context "when the string has spaces" do
      context "when given an all capital string" do
        it "lower cases the word s separated by original spaces" do
          result = described_class.lower_snake_case("CAPITAL STRING")
          expect(result).to eql "capital_string"
        end
      end

      context "when given all lower case string" do
        it "keeps the string the same" do
          result = described_class.lower_snake_case("lower case")
          expect(result).to eql "lower_case"
        end
      end

      context "when given a upper camel case string" do
        it "creates lower snake case string separated by original spaces" do
          result = described_class.lower_snake_case("SomeString WithSpaces")
          expect(result).to eql "some_string_with_spaces"
        end
      end

      context "when given a lower camel case string" do
        it "creates lower snake case strings separated by original spaces" do
          result = described_class.lower_snake_case("someString withSpaces")
          expect(result).to eql "some_string_with_spaces"
        end
      end

      context "when given an upper snake case string" do
        it "creates a lower snake case string separated by original spaces" do
          result = described_class.lower_snake_case("SOME_STRING WITH_SPACES")
          expect(result).to eql "some_string_with_spaces"
        end
      end

      context "when given an lower snake case string" do
        it "keeps the string the same" do
          result = described_class.lower_snake_case("some_string with_spaces")
          expect(result).to eql "some_string_with_spaces"
        end
      end

      context "when given 2 or more capitals in a row" do
        it "does not separate them" do
          result = described_class.lower_snake_case("LOTRFan TNGFan")
          expect(result).to eql "lotr_fan_tng_fan"
        end
      end

      context "when there are numbers in the word" do
        it "does not replace them with underscores" do
          result = described_class.lower_snake_case("Some String3")
          expect(result).to eql "some_string3"
        end
      end

      context "when there is punctuation in the word" do
        it "replaces them with underscores" do
          result = described_class.lower_snake_case("Some/ Str;ing")
          expect(result).to eql "some__str_ing"
        end
      end
    end

    context "when the string has no spaces" do
      context "when given an all capital string" do
        it "returns a string with no underscores" do
          result = described_class.lower_snake_case("CAPITAL")
          expect(result).to eql "capital"
        end
      end

      context "when given all lower case string" do
        it "returns the same lower case string" do
          result = described_class.lower_snake_case("lowercase")
          expect(result).to eql "lowercase"
        end
      end

      context "when given a upper camel case string" do
        it "returns the string in lower snake case" do
          result = described_class.lower_snake_case("SomeString")
          expect(result).to eql "some_string"
        end
      end

      context "when given a lower camel case string" do
        it "returns the string in lower snake case" do
          result = described_class.lower_snake_case("someString")
          expect(result).to eql "some_string"
        end
      end

      context "when given an upper snake case string" do
        it "returns the string in lower snake case" do
          result = described_class.lower_snake_case("Some_String")
          expect(result).to eql "some_string"
        end
      end

      context "when given an lower snake case string" do
        it "returns the same string in lower snake case" do
          result = described_class.lower_snake_case("some_string")
          expect(result).to eql "some_string"
        end
      end

      context "when given 2 or more capitals in a row" do
        it "does not separate them" do
          result = described_class.lower_snake_case("LOTRFan")
          expect(result).to eql "lotr_fan"
        end
      end

      context "when there are numbers in the word" do
        it "does not replace them with underscores" do
          result = described_class.lower_snake_case("SomeString3")
          expect(result).to eql "some_string3"
        end
      end

      context "when there is punctuation in the word" do
        it "replaces them with underscores" do
          result = described_class.lower_snake_case("Some/Str;ing")
          expect(result).to eql "some_str_ing"
        end
      end
    end
  end
end
