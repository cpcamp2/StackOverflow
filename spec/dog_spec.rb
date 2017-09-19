require 'spec_helper'

describe Dog do
  let(:dog) { Dog.create(breed: "Labradoodle", name: "Inara") }

  it "has a readable breed" do
    expect(dog.breed).to eq "Labradoodle"
  end

  it "has a readable name" do
    expect(dog.name).to eq "Inara"
  end
end

