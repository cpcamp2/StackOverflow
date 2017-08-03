require 'spec_helper'

describe Dog do
  it "has a breed" do
    d = Dog.create breed: "test", name: "Testy"
    expect(d.name).to eq("Testy")
  end
end
