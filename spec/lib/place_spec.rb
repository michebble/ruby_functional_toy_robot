require "place"

RSpec.describe Place do
  subject(:place) { described_class }

  it "places" do
    expect(place.call({}, "PLACE 0,0,NORTH")).to eq(
      {
        facing: "NORTH",
        x: 0,
        y: 0
      }
    )
  end
end
